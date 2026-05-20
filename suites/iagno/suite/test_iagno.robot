*** Settings ***
Documentation    Test cases for iagno snap
Resource         kvm.resource


*** Test Cases ***
Iagno Launches And Renders
    [Documentation]    Verify iagno snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
