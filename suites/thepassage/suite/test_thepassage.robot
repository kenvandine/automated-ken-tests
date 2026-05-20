*** Settings ***
Documentation    Test cases for thepassage snap
Resource         kvm.resource


*** Test Cases ***
Thepassage Launches And Renders
    [Documentation]    Verify thepassage snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
