*** Settings ***
Documentation    Test cases for dippi snap
Resource         kvm.resource


*** Test Cases ***
Dippi Launches And Renders
    [Documentation]    Verify dippi snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
