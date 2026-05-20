*** Settings ***
Documentation    Test cases for gtk-theme-traditionalhumanized snap
Resource         kvm.resource


*** Test Cases ***
Gtk Theme Traditionalhumanized Launches And Renders
    [Documentation]    Verify gtk-theme-traditionalhumanized snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
