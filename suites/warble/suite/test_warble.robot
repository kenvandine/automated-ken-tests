*** Settings ***
Documentation    Test cases for warble snap
Resource         kvm.resource


*** Test Cases ***
Warble Launches And Renders
    [Documentation]    Verify warble snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
