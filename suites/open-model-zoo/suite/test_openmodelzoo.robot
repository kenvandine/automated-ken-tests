*** Settings ***
Documentation    Test cases for open-model-zoo snap
Resource         kvm.resource


*** Test Cases ***
Open Model Zoo Launches And Renders
    [Documentation]    Verify open-model-zoo snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
