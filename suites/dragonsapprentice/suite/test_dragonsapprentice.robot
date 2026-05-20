*** Settings ***
Documentation    Test cases for dragonsapprentice snap
Resource         kvm.resource


*** Test Cases ***
Dragonsapprentice Launches And Renders
    [Documentation]    Verify dragonsapprentice snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
