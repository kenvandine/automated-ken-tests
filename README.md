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
| `alpaca-kenvandine` | `suites/alpaca-kenvandine/suite/` |
| `aqueducts` | `suites/aqueducts/suite/` |
| `ashpd-demo` | `suites/ashpd-demo/suite/` |
| `ask-ubuntu` | `suites/ask-ubuntu/suite/` |
| `authenticator` | `suites/authenticator/suite/` |
| `cheese` | `suites/cheese/suite/` |
| `copilot-desktop` | `suites/copilot-desktop/suite/` |
| `deepseek-desktop` | `suites/deepseek-desktop/suite/` |
| `device-config-client` | `suites/device-config-client/suite/` |
| `dippi` | `suites/dippi/suite/` |
| `dragonsapprentice` | `suites/dragonsapprentice/suite/` |
| `drawing` | `suites/drawing/suite/` |
| `duck-ai` | `suites/duck-ai/suite/` |
| `element-desktop` | `suites/element-desktop/suite/` |
| `evince` | `suites/evince/suite/` |
| `fablemaker` | `suites/fablemaker/suite/` |
| `fifteenpuzzle` | `suites/fifteenpuzzle/suite/` |
| `flash-cards` | `suites/flash-cards/suite/` |
| `fractal` | `suites/fractal/suite/` |
| `fresh-editor` | `suites/fresh-editor/suite/` |
| `frogsquash` | `suites/frogsquash/suite/` |
| `geforcenow` | `suites/geforcenow/suite/` |
| `gemini-desktop` | `suites/gemini-desktop/suite/` |
| `ghostty` | `suites/ghostty/suite/` |
| `github-user-stats` | `suites/github-user-stats/suite/` |
| `glade` | `suites/glade/suite/` |
| `gnome-chess` | `suites/gnome-chess/suite/` |
| `gnome-font-viewer` | `suites/gnome-font-viewer/suite/` |
| `gnome-info-collect` | `suites/gnome-info-collect/suite/` |
| `gnome-klotski` | `suites/gnome-klotski/suite/` |
| `gnome-mahjongg` | `suites/gnome-mahjongg/suite/` |
| `gnome-mines` | `suites/gnome-mines/suite/` |
| `gnome-nibbles` | `suites/gnome-nibbles/suite/` |
| `gnome-recipes` | `suites/gnome-recipes/suite/` |
| `gnome-robots` | `suites/gnome-robots/suite/` |
| `gnome-taquin` | `suites/gnome-taquin/suite/` |
| `gnome-tetravex` | `suites/gnome-tetravex/suite/` |
| `gnome-text-editor` | `suites/gnome-text-editor/suite/` |
| `godot-4` | `suites/godot-4/suite/` |
| `gtk-3-examples` | `suites/gtk-3-examples/suite/` |
| `gtk-3-test` | `suites/gtk-3-test/suite/` |
| `gtk-theme-pop` | `suites/gtk-theme-pop/suite/` |
| `gtk-theme-traditionalhumanized` | `suites/gtk-theme-traditionalhumanized/suite/` |
| `headset-charge-indicator` | `suites/headset-charge-indicator/suite/` |
| `iagno` | `suites/iagno/suite/` |
| `infinity-arcade` | `suites/infinity-arcade/suite/` |
| `leafpad` | `suites/leafpad/suite/` |
| `lemonade` | `suites/lemonade/suite/` |
| `lemonade-desktop` | `suites/lemonade-desktop/suite/` |
| `lemonade-server` | `suites/lemonade-server/suite/` |
| `lightning-talk-gong` | `suites/lightning-talk-gong/suite/` |
| `lightsoff` | `suites/lightsoff/suite/` |
| `lunar-client` | `suites/lunar-client/suite/` |
| `midnightmareteddy` | `suites/midnightmareteddy/suite/` |
| `missilemath` | `suites/missilemath/suite/` |
| `neofetch-desktop` | `suites/neofetch-desktop/suite/` |
| `open-model-zoo` | `suites/open-model-zoo/suite/` |
| `openmoonray` | `suites/openmoonray/suite/` |
| `perplexity-desktop` | `suites/perplexity-desktop/suite/` |
| `piper-tts` | `suites/piper-tts/suite/` |
| `pixieditor` | `suites/pixieditor/suite/` |
| `proton-lumo-ai` | `suites/proton-lumo-ai/suite/` |
| `screen-test` | `suites/screen-test/suite/` |
| `super-cool-app` | `suites/super-cool-app/suite/` |
| `tali` | `suites/tali/suite/` |
| `tank-warriors` | `suites/tank-warriors/suite/` |
| `teleport` | `suites/teleport/suite/` |
| `terminal-2048` | `suites/terminal-2048/suite/` |
| `terminal-fun` | `suites/terminal-fun/suite/` |
| `terminal-solitaire` | `suites/terminal-solitaire/suite/` |
| `terminal-tetris` | `suites/terminal-tetris/suite/` |
| `thepassage` | `suites/thepassage/suite/` |
| `thrive` | `suites/thrive/suite/` |
| `tigervnc` | `suites/tigervnc/suite/` |
| `transporter` | `suites/transporter/suite/` |
| `warble` | `suites/warble/suite/` |
| `whisper-stt` | `suites/whisper-stt/suite/` |
| `white-house` | `suites/white-house/suite/` |
| `widelands` | `suites/widelands/suite/` |
| `xournalpp` | `suites/xournalpp/suite/` |
| `yaru-widgets-example` | `suites/yaru-widgets-example/suite/` |
