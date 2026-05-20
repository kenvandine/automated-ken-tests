*** Settings ***
Documentation    Test cases for aqueducts snap
Resource         kvm.resource


*** Test Cases ***
Aqueducts Launches And Renders
    [Documentation]    Verify aqueducts snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
