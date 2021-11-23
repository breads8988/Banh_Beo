*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
#Library             DatabaseLibrary
Library             DateTimeTZ
Library             ImapLibrary2
Resource            ../Objects/Common.robot
Resource            ../Objects/Shopify.robot
Resource            ../Objects/Register.robot
Resource            ../Objects/Strapi/Login_Page.robot

*** Variables ***

*** Keywords ***

Navigate_to_Landing_Page
    [Arguments]     ${Alias}    ${URL}
    Open Browser    ${URL}    ${BROWSER}    ${Alias}
    Set Window Size    1920    1080
    #Maximize Browser Window

Login_Site_With_Account
    [Arguments]     ${Email}    ${Password}     ${Alias}    ${URL}
    Navigate_to_Landing_Page    ${Alias}    ${URL}
    Wait Until Page Contains Element    ${Strapi_LP_Email}    30
    Input Text      ${Strapi_LP_Email}          ${Email}
    Input Text      ${Strapi_LP_Password}       ${Password}
    Click Button    ${Strapi_LP_Login_Btn}
    Sleep    5s

Navigate_to_Page
    [Arguments]     ${locator}
    Wait_and_Click_Element    ${locator}

Open_Page
    [Arguments]     ${locator}
    Mouse Over      ${HB_User}
    Wait_and_Click_Element    ${locator}

Select_Pagination
    [Arguments]     ${locator}
    Scroll to Bottom of The Page
    Wait_and_Click_Element      ${locator}

Wait_and_Input_Text
    [Arguments]    ${locator}    ${txt_value}
    Wait Until Element Is Visible     ${locator}    30
    Input Text    ${locator}    ${txt_value}

Click_Element_and_Input_Text
    [Arguments]    ${locator}    ${txt_value}
    Click Element    ${locator}
    Input Text    ${locator}    ${txt_value}

Wait_and_Click_Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    30
    Click Element    ${locator}

Wait_and_Hover_Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    30
    Mouse Over    ${locator}

Wait_and_Scroll_Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    30
    Scroll Element Into View    ${locator}

Scroll_To_Element
    [Arguments]     ${locator}
    Wait Until Element Is Visible     ${locator}    30
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript  window.scrollTo(${x}, ${y})

Scroll_to_Bottom_of_The_Page
    Sleep    2
    Execute Javascript	window.scrollTo(0,document.body.scrollHeight)
