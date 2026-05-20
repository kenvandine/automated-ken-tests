*** Settings ***
Documentation    Test cases for gnome-recipes snap
Resource         kvm.resource


*** Test Cases ***
Gnome Recipes Launches And Renders
    [Documentation]    Verify gnome-recipes snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
