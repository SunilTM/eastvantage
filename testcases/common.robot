*** Settings ***
Library    Selenium2Library
Library    String
Library    Collections
Variables    ../locators/homepage.py
Variables    ../configurations/uiconfigurations.py
Resource    ../keywords/loginkeyword.robot

*** Keywords ***
Enterance exam Form
   [Arguments]    ${name}    ${lastname}    ${address}    ${country}
   Navigate to new application
   Entrance exam forms    ${name}    ${lastname}    ${address}    ${country}