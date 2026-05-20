*** Settings ***
Documentation    Test cases for gnome-nibbles snap
Resource         kvm.resource


*** Test Cases ***
Gnome Nibbles Launches And Renders
    [Documentation]    Verify gnome-nibbles snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
