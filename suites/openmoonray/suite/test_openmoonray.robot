*** Settings ***
Documentation    Test cases for openmoonray snap
Resource         kvm.resource


*** Test Cases ***
Openmoonray Launches And Renders
    [Documentation]    Verify openmoonray snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
