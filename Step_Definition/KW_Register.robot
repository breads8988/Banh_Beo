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
Resource            ../Objects/Shopify.robot
Resource            ../Step_Definition/KW_Common.robot

*** Variables ***

*** Keywords ***

Register_A_Test_Record
    [Arguments]     ${Test_Location}
    Open Browser	${Booking_Confirmation_Link}[1]    ${BROWSER}
    Wait Until Page Contains Element    ${Reg_Next_Btn}     30
    Maximize Browser Window
    Click_Next_Btn_To_Go_Personal_Detail_Page
    Add_Personal_Detail_Information    ${Test_Location}
    Wait Until Page Contains Element    ${Reg_Another_Test_Btn}     30

Click_Next_Btn_To_Go_Personal_Detail_Page
    Wait_and_Click_Element    ${Reg_Next_Btn}

Add_Personal_Detail_Information
    [Arguments]     ${Test_Location}
    Wait_and_Input_Text    ${Reg_Order_Number}    ${Order_Number}
    Wait_and_Input_Text    ${Reg_CLSON_Code}    ${CLSONCODE}
    Click Element    ${Reg_Test_Location}
    Wait_and_Click_Element    ${Test_Location}
    Wait_and_Input_Text    ${Reg_First_Name}    ${Per_First_Name}
    Wait_and_Input_Text    ${Reg_Last_Name}    ${Per_Last_Name}
    Wait_and_Input_Text    ${Reg_Passport_No}    ${Per_Passport_No}
    Click Element    ${Reg_Passport_Issuing_Country}
    Wait_and_Click_Element    ${Reg_Passport_Issuing_By_VN}
    Wait_and_Input_Text    ${Reg_Email}    ${Per_Email}
    Wait_and_Input_Text    ${Reg_Confirm_Email}    ${Per_Email}
    Wait_and_Input_Text    ${Reg_Phone}    ${Per_Phone}
    Wait_and_Input_Text    ${Reg_Date_Of_Birth}    ${Per_Date_Of_Birth}
    Scroll_To_Element    ${Reg_Gender}
    Click Element    ${Reg_Gender}
    Wait_and_Click_Element    ${Reg_Gender_Male}
    Scroll_To_Element    ${Reg_Ethnicity}
    Click Element    ${Reg_Ethnicity}
    Wait_and_Click_Element    ${Reg_Ethnicity_Asian}
    Click Element    ${Reg_Vaccinated}
    Wait_and_Click_Element    ${Reg_Vaccinated_Yes}
    Wait_and_Input_Text     ${Reg_Additional_Info}    ${Per_Additional_Info}
    Wait_and_Input_Text     ${Reg_Arrival_Date}    ${Per_Arrival_Date}
    Wait_and_Input_Text     ${Reg_Transit_Date}    ${Per_Transit_Date}
    Wait_and_Input_Text    ${Reg_Flight_Number}    ${Per_Flight_Number}
    Scroll_To_Element    ${Reg_Country_Before_Arrive}
    Click Element    ${Reg_Country_Before_Arrive}
    Wait_and_Click_Element    ${Reg_Country_Before_Arrive_VN}
    Wait_and_Input_Text    ${Reg_Isolation_Addr_1}    ${Per_Isolation_Addr_1}
    Wait_and_Input_Text    ${Reg_Isolation_Addr_2}    ${Per_Isolation_Addr_1}
    Wait_and_Input_Text    ${Reg_Isolation_Addr_3}    ${Per_Isolation_Addr_1}
    Wait_and_Input_Text    ${Reg_Isolation_City}    ${Per_Isolation_City}
    Wait_and_Input_Text    ${Reg_Isolation_Postal_Code}    ${Per_Isolation_Postal_Code}
    Scroll_To_Element    ${Reg_Home_Isolation_Addr_Cbx}
    Click Element    ${Reg_Home_Isolation_Addr_Cbx}
    Click Element    ${Reg_Home_Country}
    Wait_and_Click_Element    ${Reg_Home_Country_VN}
    Scroll_To_Element    ${Reg_Terms_Cbx}
    Click Element    ${Reg_Terms_Cbx}
    Wait Until Element Is Enabled    ${Reg_Submit_Btn}  30
    Wait Until Element Is Visible    ${Reg_Submit_Btn}  30
    Click Element    ${Reg_Submit_Btn}
    Sleep    5
