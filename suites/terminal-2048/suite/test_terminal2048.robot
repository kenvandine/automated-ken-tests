*** Settings ***
Documentation    Test cases for terminal-2048 snap
Resource         kvm.resource


*** Test Cases ***
Terminal 2048 Launches And Renders
    [Documentation]    Verify terminal-2048 snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
