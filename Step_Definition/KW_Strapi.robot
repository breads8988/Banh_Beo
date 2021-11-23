*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
#Library             DatabaseLibrary
Library             DateTimeTZ
Library             ImapLibrary2
Resource            ../Objects/Common.robot
Resource            ../Objects/Register.robot
Resource            ../Objects/Strapi/Login_Page.robot
Resource            ../Objects/Strapi/Left_Panel.robot
Resource            ../Objects/Strapi/Test_Detail.robot
Resource            ../Objects/Shopify.robot
Resource            ../Step_Definition/KW_Common.robot

*** Variables ***

*** Keywords ***
Search_Test_Record
    [Arguments]     ${Registration_Number}
    Wait_and_Click_Element    ${Strapi_Left_OnSiteTest}
    Wait_and_Input_Text    ${Strapi_Search_Box}     ${Registration_Number}

Search_And_Open_Test_Record
    [Arguments]     ${Registration_Number}
    Wait_and_Click_Element    ${Strapi_Left_OnSiteTest}
    Wait_and_Input_Text    ${Strapi_Search_Box}     ${Registration_Number}
    Wait_and_Click_Element    ${Strapi_Test_Record}
    Wait Until Page Contains Element    ${Strapi_TD_TestKitId}    30

Perform_A_Test_Record
    [Arguments]     ${Mark_As_Status}       ${Status}
    ${9_Digits}    Generate Random String      9   [NUMBERS]
    Log To Console    ${9_Digits}
    Set Suite Variable    ${TestKitId}    RD${9_Digits}
    Wait_and_Input_Text    ${Strapi_TD_TestKitId}     ${TestKitId}
    Wait_and_Click_Element    ${Strapi_TD_Perform_CheckIn}
    Sleep    5
    Wait_and_Click_Element    ${Strapi_TD_Mark_Negative}
    Sleep    2


Delete_A_Test_Record
    Reload Page
    Search_And_Open_Test_Record    ${Registration_Number}
    Wait_and_Click_Element    ${Strapi_TD_Delete_Btn}
    Wait_and_Click_Element    ${Strapi_TD_Delete_Popup_Yes}
    Search_Test_Record        ${Registration_Number}
    Wait Until Element Is Visible    ${Strapi_Test_Record_Table}    30
    Element Should Contain    ${Strapi_Test_Record_Table}   There are no On-Site Tests corresponding to the search
