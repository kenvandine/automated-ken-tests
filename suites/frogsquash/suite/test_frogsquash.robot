*** Settings ***
Documentation    Test cases for frogsquash snap
Resource         kvm.resource


*** Test Cases ***
Frogsquash Launches And Renders
    [Documentation]    Verify frogsquash snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
