*** Settings ***
Documentation    Test cases for drawing snap
Resource         kvm.resource


*** Test Cases ***
Drawing Launches And Renders
    [Documentation]    Verify drawing snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
