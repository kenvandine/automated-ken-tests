*** Settings ***
Documentation    Test cases for gnome-mahjongg snap
Resource         kvm.resource


*** Test Cases ***
Gnome Mahjongg Launches And Renders
    [Documentation]    Verify gnome-mahjongg snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
