*** Settings ***
Documentation    Test cases for midnightmareteddy snap
Resource         kvm.resource


*** Test Cases ***
Midnightmareteddy Launches And Renders
    [Documentation]    Verify midnightmareteddy snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
