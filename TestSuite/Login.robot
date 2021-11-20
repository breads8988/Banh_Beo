*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Library             ImapLibrary2
Library             SeleniumLibrary
Library             OperatingSystem
Library             String
Library             DatabaseLibrary
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Insurer/Dashboard.robot
Resource            ../Objects/Insurer/User_Management.robot
Resource            ../Objects/Insurer/Report.robot
Resource            ../Objects/Insurer/Claim_Form.robot
Resource            ../Objects/Admin/Insurer_List.robot
Resource            ../Objects/Admin/Insurer_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Admin.robot
Resource            ../Step_Definition/Insurer.robot

*** Variables ***
@{sorted}    ${Auto_Insurer_Admin}    ${Auto_Adjuster}

*** Test Cases ***

Imap
    Navigate_to_Landing_Page    Landing
#Test
    #Navigate_to_Landing_Page    Insurer_Site
    #Login_Mcall_With_Account    ${Auto_Insurer_Admin}    ${Password}
    #FOR    ${i}    IN RANGE    1    999999
        #Select_Claim_Type_On_Dashboard    ${DB_Claim_Type_VEH}
        #Search_Claim    ${DB_Search_Option_Case_Number}    ZfXXXk
        #${count}    Get Element Count    //*[contains(text(),"ZfXXXk")]
        #Log To Console    ${count}
        #Exit For Loop If    ${count} == 0
        #Delete_A_Claim
    #END
