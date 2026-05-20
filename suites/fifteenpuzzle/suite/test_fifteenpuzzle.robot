*** Settings ***
Documentation    Test cases for fifteenpuzzle snap
Resource         kvm.resource


*** Test Cases ***
Fifteenpuzzle Launches And Renders
    [Documentation]    Verify fifteenpuzzle snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
