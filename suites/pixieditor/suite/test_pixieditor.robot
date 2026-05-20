*** Settings ***
Documentation    Test cases for pixieditor snap
Resource         kvm.resource


*** Test Cases ***
Pixieditor Launches And Renders
    [Documentation]    Verify pixieditor snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
