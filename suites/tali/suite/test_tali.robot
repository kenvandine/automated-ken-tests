*** Settings ***
Documentation    Test cases for tali snap
Resource         kvm.resource


*** Test Cases ***
Tali Launches And Renders
    [Documentation]    Verify tali snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
