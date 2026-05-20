*** Settings ***
Documentation    Test cases for ashpd-demo snap
Resource         kvm.resource


*** Test Cases ***
Ashpd Demo Launches And Renders
    [Documentation]    Verify ashpd-demo snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
