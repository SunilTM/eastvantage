*** Settings ***
Library    Selenium2Library
Library    String
Library    Collections
Variables    ../locators/homepage.py
Variables    ../configurations/uiconfigurations.py

*** Keywords ***
LoginIntoApplication 
    [Arguments]    ${appurl}    ${appbrowser}    ${loginuser}    ${loginpassword}
      
    Open Browser    url=${appurl}    browser=${appbrowser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${cookie_title}
    Click Element    ${allow_cookie_btn}
    Element Should Be Visible    ${submit_application}
    Click Element    ${submit_application}
    Input Text    ${email_id_txtbox}    ${loginuser}
    Input Text    ${password_txtbox}    ${loginpassword}
    Click Button    ${login_btn}
    
Navigate to new application

    ${submission_page}=    Get Title
    Title Should Be    Continue with the submission of an application? -
    Click Element    ${new_application}
    
Entrance exam forms
    [Arguments]    ${firstname}    ${lastname}    ${street_adress}    ${postal_code}
   
    Wait Until Keyword Succeeds    20s    5s    Wait Until Element Is Visible    ${first_name_txtbox}
    Input Text    ${first_name_txtbox}    ${firstname}
    Input Text    ${last_name_txtbox}    ${lastname}
    Input Text    ${street_address_txtbox}    ${street_adress}
    Input Text    ${postal_code_txtbox}    ${postal_code}
    ${country_dropdown} =    Get WebElements    ${country_drpdwn}
    Select From List by Label    ${country_dropdown}    India
    ${role_dropdown} =    Get WebElements    ${role_drpdwn}
    Select From List by Value    ${role_dropdown}    Manual tester
    
    Wait Until Keyword Succeeds    5s    1s    Click Button    ${male_radio_btn}
    
    ${elements} =    Get Webelements    ${list_role}
    ${role_web_elements}=    Create List    
    ${filtered_list}=    Create List
    FOR    ${element}    IN    @{elements}
        ${text} =    Get Text    ${element}
        Append To List    ${role_web_elements}    ${text}
    END
    Log    ${role_web_elements}
    ${length}=    Get Length     ${role_web_elements}    
    Select Checkbox    ${robot_framework_chkbox}
    Select Checkbox    ${cypress_chkbox}
    Click Button    ${next_scrn_btn}
   
    
LogoutFromApplication
    
    Click Element    ${my_account_img}
    Click Element    ${logout}
    

ShutDownBrowser
    
    Close All Browsers