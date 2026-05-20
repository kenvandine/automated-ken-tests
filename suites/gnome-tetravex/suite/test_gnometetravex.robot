*** Settings ***
Documentation    Test cases for gnome-tetravex snap
Resource         kvm.resource


*** Test Cases ***
Gnome Tetravex Launches And Renders
    [Documentation]    Verify gnome-tetravex snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
