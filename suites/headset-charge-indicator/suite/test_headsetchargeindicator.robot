*** Settings ***
Documentation    Test cases for headset-charge-indicator snap
Resource         kvm.resource


*** Test Cases ***
Headset Charge Indicator Launches And Renders
    [Documentation]    Verify headset-charge-indicator snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
