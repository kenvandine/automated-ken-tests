*** Settings ***
Documentation    Test cases for gnome-text-editor snap
Resource         kvm.resource


*** Test Cases ***
Gnome Text Editor Launches And Renders
    [Documentation]    Verify gnome-text-editor snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
