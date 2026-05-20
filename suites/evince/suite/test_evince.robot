*** Settings ***
Documentation    Test cases for evince snap
Resource         kvm.resource


*** Test Cases ***
Evince Launches And Renders
    [Documentation]    Verify evince snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
