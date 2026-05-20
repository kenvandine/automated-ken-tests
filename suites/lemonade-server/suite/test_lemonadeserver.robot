*** Settings ***
Documentation    Test cases for lemonade-server snap
Resource         kvm.resource


*** Test Cases ***
Lemonade Server Launches And Renders
    [Documentation]    Verify lemonade-server snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
