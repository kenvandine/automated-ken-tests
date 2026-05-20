*** Settings ***
Documentation    Test cases for gnome-info-collect snap
Resource         kvm.resource


*** Test Cases ***
Gnome Info Collect Launches And Renders
    [Documentation]    Verify gnome-info-collect snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
