# automated-ken-tests

YARF snap testing repository, managed by [snap-dashboard](https://github.com/kenvandine/automated-ken).

Test results are published as pull requests in this repository. snap-dashboard polls the PRs and displays pass/fail status with screenshots inline.

## Repository setup

### 1. GitHub Actions secret

Add a repository secret named `SNAP_DASHBOARD_GITHUB_TOKEN` with a Personal Access Token that has **repo** scope. This allows the workflow to push result branches and open PRs.

Optional: add `SNAPCRAFT_STORE_CREDENTIALS` if any snap requires store-authenticated installation.

### 2. Configure snap-dashboard

In snap-dashboard **Settings**, set **Testing Repository** to `kenvandine/automated-ken-tests`.

## Test suite structure

Each snap has its own suite directory:

```
suites/<snap_name>/suite/
├── __init__.robot          # Suite setup/teardown (variables, display init, etc.)
└── test_<snapname>.robot   # Test cases
```

The GitHub Actions workflow looks for suites at `suites/<snap_name>/suite/` and expects `__init__.robot` to be present.

## GitHub Actions workflow

The workflow at `.github/workflows/snap-test.yml` is triggered by snap-dashboard via `workflow_dispatch`. It:

1. Installs `xvfb`, `yarf` (beta), `mir-test-tools`, and the snap under test
2. Starts a virtual X11 display (`Xvfb :99`) for the Mir compositor
3. Runs YARF with `--platform Mir` against the snap's suite
4. Uploads test artifacts (results + screenshots)
5. Commits results to a branch and opens a PR back to `main`

### Workflow inputs

| Input | Description |
|-------|-------------|
| `snap_name` | Snap to test |
| `from_channel` | Channel to install from (`candidate` or `edge`) |
| `architecture` | `amd64` or `arm64` |
| `version` | Expected version string (informational) |
| `revision` | Expected revision number (informational) |
| `dashboard_run_id` | snap-dashboard TestRun ID (echoed into PR metadata) |

## Running tests locally

```bash
# Install YARF
sudo snap install --beta yarf
sudo snap install mir-test-tools
sudo snap connect yarf:process-control

# Install the snap under test
sudo snap install mysnap --channel candidate

# Start virtual display
sudo apt-get install -y xvfb
Xvfb :99 -screen 0 1920x1080x24 &

# Run tests
DISPLAY=:99 yarf --platform Mir --outdir results/mysnap suites/mysnap/suite
```

## Test result PRs

Each test run creates a branch `test-results/<snap>/<gh_run_id>` and opens a PR titled:

- `✅ mysnap 1.2.3 (candidate) — passed`
- `❌ mysnap 1.2.3 (candidate) — failed`

The PR body contains a results table, screenshots (if any PNGs were written to `results/<snap>/`), and an HTML comment with machine-readable metadata used by snap-dashboard.

## Existing suites

| Snap | Suite location |
|------|---------------|
| `ask-ubuntu` | `suites/ask-ubuntu/suite/` |
| `lemonade` | `suites/lemonade/suite/` |
