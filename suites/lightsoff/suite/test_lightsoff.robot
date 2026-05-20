*** Settings ***
Documentation    Test cases for lightsoff snap
Resource         kvm.resource


*** Test Cases ***
Lightsoff Launches And Renders
    [Documentation]    Verify lightsoff snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
