*** Settings ***
Documentation    Test cases for cheese snap
Resource         kvm.resource


*** Test Cases ***
Cheese Launches And Renders
    [Documentation]    Verify cheese snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
