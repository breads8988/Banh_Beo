*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
#Library             DatabaseLibrary
Library             DateTimeTZ
Library             ImapLibrary2
Resource            ../Objects/Common.robot
Resource            ../Objects/Register.robot
Resource            ../Objects/Shopify.robot
Resource            ../Objects/Strapi/Login_Page.robot
Resource            ../Objects/Strapi/Left_Panel.robot
Resource            ../Objects/Shopify.robot
Resource            ../Step_Definition/KW_Common.robot

*** Variables ***

*** Keywords ***

Navigate_To_United_Kingdom_Site
    Navigate_to_Landing_Page    Shopify     ${Shopify_URL}
    Wait_and_Click_Element    ${Shop_Password_Btn}
    # Wait_and_Input_Text    ${Shop_Password_Box}    collinson
    # Wait_and_Click_Element    ${Shop_Enter_Btn}
    # Wait_and_Hover_Element    ${Shop_Shop_Dropdown}
    # Wait_and_Click_Element    ${Shop_Shop_Dropdown_UK}

Select_A_Package
    [Arguments]    ${location}     ${Test_Type}
    Set Suite Variable    \${location}    ${location}
    Set Suite Variable    \${Test_Type}    ${Test_Type}
    Log To Console    ${location}
    Wait_and_Click_Element      //*[@id="CollectionSection"]//span[contains(text(),'${location}')]/..
    Wait Until Element Is Visible    //*[@id="bta-widget-container"]//iframe    30
    Select Frame    //*[@id="bta-widget-container"]//iframe
    Wait_and_Click_Element    ${Shop_Test_Type}
    Sleep    2
    Wait_and_Click_Element      //*[@id="split-button-basic-0"]/div[2]//div[contains(text(),'${Test_Type}')]
    #Wait_and_Click_Element    ${Shop_Next_Month_Btn}
    ${Atr}=    Get Element Attribute    ${Shop_Date_Today}   aria-disabled
    Log To Console      ${Atr}
    Wait_and_Click_Element    ${Shop_Date_Today}
    #Wait_and_Scroll_Element    ${Shop_Book_Now_Btn}
    Scroll_To_Element    ${Shop_Book_Now_Btn}
    Wait_and_Click_Element    ${Shop_Book_Now_Btn}
    Unselect Frame
    Sleep    5

Purchase_A_Package
    Wait_and_Scroll_Element    ${Shop_CheckOut_Btn}
    Scroll_to_Bottom_of_The_Page
    Wait_and_Click_Element    ${Shop_CheckOut_Btn}
    Wait_and_Input_Text    ${Shop_Email}    ${Per_Email}
    Input Text    ${Shop_First_Name}    ${Per_First_Name}
    Input Text    ${Shop_Last_Name}     ${Per_Last_Name}
    Input Text    ${Shop_Address}       ${Per_Address}
    Input Text    ${Shop_Apartment}     ${Per_Appartment}
    Input Text    ${Shop_City}          ${Per_Isolation_City}
    Click Element    ${Shop_Country}
    Wait_and_Click_Element    ${Shop_Country_VN}
    Input Text    ${Shop_Postal_Code}   ${Per_Isolation_Postal_Code}
    Input Text    ${Shop_Phone}         ${Per_Phone}
    Wait_and_Scroll_Element    ${Shop_Cont_Payment_Btn}
    Wait_and_Click_Element    ${Shop_Cont_Payment_Btn}
    Wait Until Element Is Visible    //*[@class="card-fields-iframe"]   30
    #${Elements}=    Get WebElements    //*[@class="card-fields-iframe"]
    Select Frame    //*[starts-with(@id,'card-fields-number')]
    Press Keys      ${Shop_Card_Number}     4242 4242 4242 4242
    Unselect Frame
    Select Frame    //*[starts-with(@id,'card-fields-name')]
    Wait_and_Input_Text    ${Shop_Card_Name}    Automation
    Unselect Frame
    Select Frame    //*[starts-with(@id,'card-fields-expiry')]
    Press Keys      ${Shop_Card_Expired_Date}    12 2030
    Unselect Frame
    Select Frame    //*[starts-with(@id,'card-fields-verification')]
    Wait_and_Input_Text    ${Shop_Card_Security_Code}    777
    Unselect Frame
    Scroll_To_Element    ${Shop_Card_Paynow_Btn}
    Wait_and_Click_Element    ${Shop_Card_Paynow_Btn}
    Unselect Frame
    Wait Until Element Is Enabled    //*[@id="google-analytics-sandbox"]    30
    Select Frame    //*[@id="google-analytics-sandbox"]
    #Page Should Contain Element    ${Shop_ThankYou}     60
    Sleep    5
    ${Order_Number}=    Get Text    ${Shop_Order_Number}
    Set Suite Variable    ${Order_Number}    ${Order_Number}
    Log To Console    ${Order_Number}
    Unselect Frame
