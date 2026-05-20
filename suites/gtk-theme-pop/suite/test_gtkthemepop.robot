*** Settings ***
Documentation    Test cases for gtk-theme-pop snap
Resource         kvm.resource


*** Test Cases ***
Gtk Theme Pop Launches And Renders
    [Documentation]    Verify gtk-theme-pop snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
