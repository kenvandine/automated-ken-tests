*** Settings ***
Documentation    Test cases for device-config-client snap
Resource         kvm.resource


*** Test Cases ***
Device Config Client Launches And Renders
    [Documentation]    Verify device-config-client snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
