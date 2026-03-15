# automated-ken-tests

Testing repository for YARF snap tests managed by snap-dashboard.

## Setup

1. Add this repository as the testing repo in snap-dashboard settings
2. Add the following GitHub secrets to this repository:
   - `SNAP_DASHBOARD_GITHUB_TOKEN` - A GitHub token with `repo` scope
   - (Optional) `SNAPCRAFT_STORE_CREDENTIALS` - For store-authenticated snap installs

## Test Suite Structure

Test suites should be organized as:
```
suites/<snap_name>/suite/
├── __init__.robot          # Suite setup/teardown and variables
└── test_<snapname>.robot   # Test cases (note: filename uses hyphenless name)
```

## Usage

Trigger tests from snap-dashboard by selecting a snap and channel.
Test results will be published as PRs in this repository.

## Example: ask-ubuntu Snap Test

The `ask-ubuntu` test suite is included as an example:

```
suites/ask-ubuntu/suite/
├── __init__.robot          # Xvfb setup for headless display
└── test_askubuntu.robot    # Test cases (no hyphen in filename)
```

### Test Coverage

- **Smoke**: Verify snap is installed
- **Functional**: Launch app, verify window title
- **Connectivity**: Check network access to Ask Ubuntu service
- **UI**: Verify help menu and About dialog

### Running Tests Locally

```bash
# Install YARF
pip install canonical-yarf

# Start virtual display
Xvfb :99 -screen 0 1280x800x24 &
export DISPLAY=:99

# Run tests
yarf --platform Mir suites/ask-ubuntu/suite/
```
