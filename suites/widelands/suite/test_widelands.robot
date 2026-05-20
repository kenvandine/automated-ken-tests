*** Settings ***
Documentation    Test cases for widelands snap
Resource         kvm.resource


*** Test Cases ***
Widelands Launches And Renders
    [Documentation]    Verify widelands snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
