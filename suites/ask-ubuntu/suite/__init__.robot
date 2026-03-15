*** Settings ***
Documentation    YARF test suite for ask-ubuntu snap
...
...    This suite tests the ask-ubuntu snap functionality using the
...    Mir platform and Xvfb for headless display simulation.

Resource    ${SUITE_SOURCE_DIR}/test_askubuntu.robot

Test Setup    Start Xvfb And Set Display
Test Teardown    Stop Xvfb

*** Variables ***
${XVFB_DISPLAY}    :99
${XVFB_SCREEN}    1280x800x24

*** Keywords ***
Start Xvfb And Set Display
    Run Keyword And Continue On Failure    Xvfb ${XVFB_DISPLAY} -screen 0 ${XVFB_SCREEN}
    Sleep    2s
    Set Environment Variable    DISPLAY    ${XVFB_DISPLAY}

Stop Xvfb
    # Xvfb is automatically cleaned up by the workflow runner
    # This is a placeholder for any cleanup needed
