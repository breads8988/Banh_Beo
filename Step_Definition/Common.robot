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
Navigate_to_Landing_Page
    [Arguments]     ${Alias}
    Open Browser    ${URL_UAT}    ${BROWSER}    ${Alias}
    Maximize Browser Window

Login_Mcall_With_Account
    [Arguments]     ${Email}    ${Password}
    Wait Until Page Contains Element    ${LP_Email}    60
    Input Text      ${LP_Email}          ${Email}
    Input Text      ${LP_Password}       ${Password}
    Click Button    ${LP_Login_btn}
    Wait Until Page Contains Element    ${HB_Dashboard}    60
    Sleep    5s

Navigate to Page
    [Arguments]     ${locator}
    Wait and Click Element    ${locator}

Open Page
    [Arguments]     ${locator}
    Mouse Over      ${HB_User}
    Wait and Click Element    ${locator}

Select Language
    [Arguments]     ${locator}
    Mouse Over      ${HB_Language}
    Wait and Click Element    ${locator}

Select_Pagination
    [Arguments]     ${locator}
    Scroll to Bottom of The Page
    Wait and Click Element      ${locator}

Wait and Input Text
    [Arguments]    ${locator}    ${txt_value}
    Wait Until Element Is Visible     ${locator}    60
    Input Text    ${locator}    ${txt_value}

Click Element and Input Text
    [Arguments]    ${locator}    ${txt_value}
    Click Element    ${locator}
    Input Text    ${locator}    ${txt_value}

Wait and Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    60
    Click Element    ${locator}

Wait and Scroll Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    60
    Scroll Element Into View    ${locator}

Scroll To Element
    [Arguments]     ${locator}
    Wait Until Element Is Visible     ${locator}    60
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

Scroll to Bottom of The Page
    Sleep    2
    Execute Javascript	window.scrollTo(0,document.body.scrollHeight)

Suite_Setup
    ${Case_Number}    Generate Random String	6	[LETTERS]
    Set Suite Variable    ${Case_Number}    ${Case_Number}
