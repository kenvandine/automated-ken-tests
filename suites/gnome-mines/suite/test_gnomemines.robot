*** Settings ***
Documentation    Test cases for gnome-mines snap
Resource         kvm.resource


*** Test Cases ***
Gnome Mines Launches And Renders
    [Documentation]    Verify gnome-mines snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
