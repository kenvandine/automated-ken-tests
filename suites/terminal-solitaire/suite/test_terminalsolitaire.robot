*** Settings ***
Documentation    Test cases for terminal-solitaire snap
Resource         kvm.resource


*** Test Cases ***
Terminal Solitaire Launches And Renders
    [Documentation]    Verify terminal-solitaire snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
