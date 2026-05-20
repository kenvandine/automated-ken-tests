*** Settings ***
Documentation    Test cases for teleport snap
Resource         kvm.resource


*** Test Cases ***
Teleport Launches And Renders
    [Documentation]    Verify teleport snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
