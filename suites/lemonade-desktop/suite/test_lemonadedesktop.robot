*** Settings ***
Documentation    Test cases for lemonade-desktop snap
Resource         kvm.resource


*** Test Cases ***
Lemonade Desktop Launches And Renders
    [Documentation]    Verify lemonade-desktop snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
