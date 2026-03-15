*** Settings ***
Documentation    Test cases for ask-ubuntu snap
Library    BuiltIn
Library    OperatingSystem
Library    Screenshot

Suite Setup    Verify Snap Is Installed
Suite Teardown    Uninstall Snap

*** Test Cases ***
Verify Ask Ubuntu Snap Launches
    [Documentation]    Ensure the ask-ubuntu snap launches successfully
    [Tags]    smoke
    ${result}    Run Keyword And Return Status    Snap List    ask-ubuntu
    Should Be True    ${result}    ask-ubuntu snap should be installed

Verify Lemonade Server Installed
    [Documentation]    Verify lemonade-server snap was installed as dependency
    [Tags]    smoke
    ${result}    Run Keyword And Return Status    Snap List    lemonade-server
    Should Be True    ${result}    lemonade-server snap should be installed

Open Ask Ubuntu Application
    [Documentation]    Launch the ask-ubuntu application
    [Tags]    functional
    Start Application    ask-ubuntu
    Wait For Application Window    ask-ubuntu    10s
    Capture Screenshot    ask-ubuntu-launched

Verify Application Title
    [Documentation]    Check that the application window has the correct title
    [Tags]    functional
    ${title}    Get Window Title    ask-ubuntu
    Should Contain    ${title}    Ask Ubuntu

Check Network Connectivity
    [Documentation]    Verify the app can reach the Ask Ubuntu service
    [Tags]    connectivity
    ${connected}    Run Keyword And Return Status    Ping    askubuntu.com
    Should Be True    ${connected}    Should be able to reach Ask Ubuntu

Verify Help Menu Exists
    [Documentation]    Check that the application has a help menu
    [Tags]    ui
    Click Menu Item    Help    About
    Wait For Element    About Dialog    5s
    Capture Screenshot    help-menu-visible

*** Keywords ***
Verify Snap Is Installed
    ${list}    Run    snap list
    Should Contain    ${list.stdout}    ask-ubuntu
    Should Contain    ${list.stdout}    lemonade-server

Uninstall Snap
    Run    snap remove ask-ubuntu    warn

Start Application
    [Documentation]    Start the ask-ubuntu snap
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
