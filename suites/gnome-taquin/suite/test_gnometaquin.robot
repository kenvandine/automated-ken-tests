*** Settings ***
Documentation    Test cases for gnome-taquin snap
Resource         kvm.resource


*** Test Cases ***
Gnome Taquin Launches And Renders
    [Documentation]    Verify gnome-taquin snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
