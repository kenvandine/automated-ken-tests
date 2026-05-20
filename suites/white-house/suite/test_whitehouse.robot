*** Settings ***
Documentation    Test cases for white-house snap
Resource         kvm.resource


*** Test Cases ***
White House Launches And Renders
    [Documentation]    Verify white-house snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
