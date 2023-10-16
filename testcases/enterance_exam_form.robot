*** Settings ***
Resource    common.robot
Variables    ../testdata/enterance_ exam_testdata.py

Suite Setup    LoginIntoApplication    ${APPLICATION_URL}    ${BROWSER}    ${USERNAME}    ${PASSWORD}
Suite Teardown     ShutDownBrowser
Test Teardown    LogoutFromApplication

Test Template    Enterance exam Form


*** Test Cases ***

Test with Enterance exam    ${AlexEnteranceExam["name"]}    ${AlexEnteranceExam["lastname"]}    ${AlexEnteranceExam["address"]}    ${AlexEnteranceExam["postalcode"]}