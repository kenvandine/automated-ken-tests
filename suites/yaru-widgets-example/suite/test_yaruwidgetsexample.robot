*** Settings ***
Documentation    Test cases for yaru-widgets-example snap
Resource         kvm.resource


*** Test Cases ***
Yaru Widgets Example Launches And Renders
    [Documentation]    Verify yaru-widgets-example snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
