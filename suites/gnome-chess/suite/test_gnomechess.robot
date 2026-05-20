*** Settings ***
Documentation    Test cases for gnome-chess snap
Resource         kvm.resource


*** Test Cases ***
Gnome Chess Launches And Renders
    [Documentation]    Verify gnome-chess snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
