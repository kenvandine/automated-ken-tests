*** Settings ***
Documentation    Test cases for tigervnc snap
Resource         kvm.resource


*** Test Cases ***
Tigervnc Launches And Renders
    [Documentation]    Verify tigervnc snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
