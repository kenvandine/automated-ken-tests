*** Settings ***
Documentation    YARF test suite for lemonade snap
Library          Process

Suite Setup      Start Lemonade
Suite Teardown   Stop Lemonade


*** Keywords ***
Start Lemonade
    Start Process    snap    run    lemonade    alias=lemonade
    Sleep    3s

Stop Lemonade
    Terminate Process    lemonade    kill=True
