*** Settings ***
Documentation    Test cases for transporter snap
Resource         kvm.resource


*** Test Cases ***
Transporter Launches And Renders
    [Documentation]    Verify transporter snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
