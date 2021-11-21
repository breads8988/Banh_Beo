*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
#Library             pywinauto
Library				DateTimeTZ
Library             ImapLibrary2
#Library             ../Data_Files/HH.py
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Insurer/Dashboard.robot
Resource            ../Objects/Admin/Insurer_List.robot
Resource            ../Objects/Admin/Insurer_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Admin.robot
Resource            ../Step_Definition/Insurer.robot

*** Variables ***

*** Keywords ***
Open_Insurer_Page
    Open Page    ${HB_UD_Insurer}
    Wait Until Element Is Visible    ${Ins_New_Insurer_btn}     60

Open_Automation_Insurer_Detail_Page
    Open Insurer Detail     ${Ins_Table_Settings}
    Wait Until Element Is Visible    ${Ins_Settings}     60

Navigate_to_Feature_Access_Page
    Navigate to Page    ${Ins_Feature_Access}
    Wait Until Element Is Visible    ${FA_User_Management}     60

Open_Insurer_Detail
    [Arguments]     ${locator}
    Scroll To Element       ${locator}
    Click Element           ${locator}

Verify_Feature_Is_Enabled
    [Arguments]     ${locator}      ${Position}
    ${content}  Execute Javascript     return window.getComputedStyle(document.querySelectorAll('${FA_Checkbox}')[${Position}],':before').getPropertyValue('content')
    Log To Console    ${content}
    IF    '${content}' == 'none'
        Wait and Click Element    ${locator}
        Wait and Click Element    ${FA_Save_Btn}
        Wait Until Page Contains    Successfully updated feature access     60
        Log To Console    Enable Feature Successfully
    ELSE
        Log To Console    Features is Enabled
    END

Verify_Feature_Is_Disabled
    [Arguments]     ${locator}      ${Position}
    ${content}  Execute Javascript     return window.getComputedStyle(document.querySelectorAll('${FA_Checkbox}')[${Position}],':before').getPropertyValue('content')
    Log To Console    ${content}
    IF    '${content}' == 'none'
        Log To Console    Features is Disabled
    ELSE
        Wait and Click Element    ${locator}
        Wait and Click Element    ${FA_Save_Btn}
        Wait Until Page Contains    Successfully updated feature access     60
        Log To Console    Disable Feature Successfully
    END
