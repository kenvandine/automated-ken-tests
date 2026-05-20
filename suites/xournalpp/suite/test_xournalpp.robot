*** Settings ***
Documentation    Test cases for xournalpp snap
Resource         kvm.resource


*** Test Cases ***
Xournalpp Launches And Renders
    [Documentation]    Verify xournalpp snap launches and renders a UI on Mir
    [Tags]    smoke    yarf:certification_status: blocker
    Log Screenshot
