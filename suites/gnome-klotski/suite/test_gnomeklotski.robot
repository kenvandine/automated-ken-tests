*** Settings ***
Documentation    Test cases for gnome-klotski snap
Resource         kvm.resource


*** Test Cases ***
Gnome Klotski Launches And Renders
    [Documentation]    Verify gnome-klotski snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
