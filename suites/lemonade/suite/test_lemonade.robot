*** Settings ***
Documentation    Test cases for lemonade snap
Resource         kvm.resource


*** Test Cases ***
Lemonade Launches And Renders
    [Documentation]    Verify lemonade snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
