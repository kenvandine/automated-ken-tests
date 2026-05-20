*** Settings ***
Documentation    Test cases for tank-warriors snap
Resource         kvm.resource


*** Test Cases ***
Tank Warriors Launches And Renders
    [Documentation]    Verify tank-warriors snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
