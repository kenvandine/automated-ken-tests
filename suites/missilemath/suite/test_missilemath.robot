*** Settings ***
Documentation    Test cases for missilemath snap
Resource         kvm.resource


*** Test Cases ***
Missilemath Launches And Renders
    [Documentation]    Verify missilemath snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
