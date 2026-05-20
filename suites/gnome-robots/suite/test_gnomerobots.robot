*** Settings ***
Documentation    Test cases for gnome-robots snap
Resource         kvm.resource


*** Test Cases ***
Gnome Robots Launches And Renders
    [Documentation]    Verify gnome-robots snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
