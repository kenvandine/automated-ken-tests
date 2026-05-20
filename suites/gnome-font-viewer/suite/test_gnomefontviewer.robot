*** Settings ***
Documentation    Test cases for gnome-font-viewer snap
Resource         kvm.resource


*** Test Cases ***
Gnome Font Viewer Launches And Renders
    [Documentation]    Verify gnome-font-viewer snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
