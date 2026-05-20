*** Settings ***
Documentation    Test cases for fablemaker snap
Resource         kvm.resource


*** Test Cases ***
Fablemaker Launches And Renders
    [Documentation]    Verify fablemaker snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
