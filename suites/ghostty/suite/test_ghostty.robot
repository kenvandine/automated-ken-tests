*** Settings ***
Documentation    Test cases for ghostty snap
Resource         kvm.resource


*** Test Cases ***
Ghostty Launches And Renders
    [Documentation]    Verify ghostty snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
