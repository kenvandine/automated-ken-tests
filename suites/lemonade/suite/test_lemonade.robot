*** Settings ***
Documentation    Test cases for lemonade snap
Library    BuiltIn
Library    OperatingSystem
Library    Screenshot

Suite Setup    Verify Snap Is Installed
Suite Teardown    Uninstall Snap

*** Test Cases ***
Verify Lemonade Snap Launches
    [Documentation]    Ensure the lemonade snap launches successfully
    [Tags]    smoke
    ${result}    Run Keyword And Return Status    Snap List    lemonade
    Should Be True    ${result}    lemonade snap should be installed

Verify Lemonade Server Installed
    [Documentation]    Verify lemonade-server snap was installed as dependency
    [Tags]    smoke
    ${result}    Run Keyword And Return Status    Snap List    lemonade-server
    Should Be True    ${result}    lemonade-server snap should be installed

Open Lemonade Application
    [Documentation]    Launch the lemonade application
    [Tags]    functional
    Start Application    lemonade
    Wait For Application Window    lemonade    10s
    Capture Screenshot    lemonade-launched

Verify Application Title
    [Documentation]    Check that the application window has the correct title
    [Tags]    functional
    ${title}    Get Window Title    lemonade
    Should Contain    ${title}    Lemonade

Check Network Connectivity
    [Documentation]    Verify the app can reach the Lemonade service
    [Tags]    connectivity
    ${connected}    Run Keyword And Return Status    Ping    lemonade
    Should Be True    ${connected}    Should be able to reach Lemonade

Verify Menu Exists
    [Documentation]    Check that the application has a menu
    [Tags]    ui
    Click Menu Item    Help    About
    Wait For Element    About Dialog    5s
    Capture Screenshot    menu-visible

*** Keywords ***
Verify Snap Is Installed
    ${list}    Run    snap list
    Should Contain    ${list.stdout}    lemonade
    Should Contain    ${list.stdout}    lemonade-server

Uninstall Snap
    Run    snap remove lemonade    warn

Start Application
    [Documentation]    Start the lemonade snap
    [Arguments]    ${app_name}
    Run    snap run ${app_name}    &

Wait For Application Window
    [Documentation]    Wait for the application window to appear
    [Arguments]    ${app_name}    ${timeout}=10s
    Wait Until Keyword Succeeds    ${timeout}    1s    Window Exists    ${app_name}

Window Exists
    [Documentation]    Check if a window exists for the given app
    [Arguments]    ${app_name}
    ${windows}    Run    wmctrl -l
    Should Contain    ${windows.stdout}    ${app_name}

Get Window Title
    [Documentation]    Get the title of the application window
    [Arguments]    ${app_name}
    ${windows}    Run    wmctrl -l
    ${match}    Evaluate    [w for w in """${windows.stdout}""".splitlines() if "${app_name}" in w][0]
    ${title}    Evaluate    """${match}""".split(" ", 3)[-1]
    Return From Keyword    ${title}

Click Menu Item
    [Documentation]    Click a menu item by name
    [Arguments]    ${menu}    ${item}
    Run   xdotool search --name "${menu}" key Alt+${item}
