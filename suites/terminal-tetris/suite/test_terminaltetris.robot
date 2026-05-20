*** Settings ***
Documentation    Test cases for terminal-tetris snap
Resource         kvm.resource


*** Test Cases ***
Terminal Tetris Launches And Renders
    [Documentation]    Verify terminal-tetris snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
