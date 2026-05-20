*** Settings ***
Documentation    Test cases for glade snap
Resource         kvm.resource


*** Test Cases ***
Glade Launches And Renders
    [Documentation]    Verify glade snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
