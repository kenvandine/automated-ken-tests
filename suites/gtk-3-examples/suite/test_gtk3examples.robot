*** Settings ***
Documentation    Test cases for gtk-3-examples snap
Resource         kvm.resource


*** Test Cases ***
Gtk 3 Examples Launches And Renders
    [Documentation]    Verify gtk-3-examples snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
