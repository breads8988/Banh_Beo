*** Settings ***
Library             SeleniumLibrary
Library             String
Library             OperatingSystem
Library             pywinauto
Library				DateTimeTZ
Library             ImapLibrary2
#Library             ../Data_Files/HH.py
Resource            ../Objects/Common/Login_Page.robot
Resource            ../Objects/Common/Common.robot
Resource            ../Objects/Common/Header_Bar.robot
Resource            ../Objects/Insurer/Dashboard.robot
Resource            ../Objects/Insurer/User_Management.robot
Resource            ../Objects/Insurer/Report.robot
Resource            ../Objects/Insurer/Claim_Form.robot
Resource            ../Objects/Insurer/Claim_Content.robot
Resource            ../Objects/Admin/Insurer_List.robot
Resource            ../Objects/Admin/Insurer_Detail.robot
Resource            ../Step_Definition/Common.robot
Resource            ../Step_Definition/Admin.robot
Resource            ../Step_Definition/Insurer.robot

*** Variables ***
@{Account}      ${Auto_Insurer_Admin}    ${Auto_Adjuster}   ${Auto_Adjuster_Property}   ${Auto_Adjuster_Vehicle}    ${Auto_Building_Manager}    ${Auto_Lead_Property}   ${Auto_Lead_Vehicle}
*** Keywords ***
Open_User_Management_Page
    Open Page    ${HB_UD_User}
    Wait Until Page Contains Element    ${UM_Create_New_User_Btn}   60

Open_New_Claim_Page
    Wait and Click Element    ${NewCase_btn}
    Wait Until Page Contains Element    ${CF_Claim_Type}    30

Click_Submit_Case_Btn
    Scroll To Element    ${CF_Submit_Case_btn}
    Click Element    ${CF_Submit_Case_btn}
    Wait Until Page Contains Element    ${CC_Back_btn}  30

CF_Select_Claim_Type
    [Arguments]     ${locator}      ${locator1}
    Wait and Click Element    ${CF_Claim_Type}
    Wait and Click Element    ${locator}
    Wait Until Element Is Visible    ${locator1}    60

VIH_Input_Data_For_New_Damage_Recording_Block
    [Arguments]     ${locator}
    Wait and Click Element    ${CF_NDR_Type_Damage}
    Wait and Click Element    ${locator}
    Wait and Input Text     ${CF_NDR_Case_Number}    ${Case_Number}
    Wait and Input Text    ${CF_NDR_First_Last_Name}    ${CF_NDR_First_Last_Name_Value}
    Wait and Input Text    ${CF_NDR_Email_Contact_Person}    ${CF_NDR_NDR_Email_Value}
    Wait and Input Text    ${CF_NDR_Phone_Contact_Person}    ${CF_NDR_NDR_Mobile_No_Value}

VIH_Input_Data_For_Personal_Information_Claimant_Block
    Scroll To Element       ${CF_PIC_Block}
    Wait and Input Text     ${CF_PIC_Name_Holder}    ${CF_VIH_PIC_Name_Holder}
    Wait and Input Text     ${CF_PIC_Name_Driver}    ${CF_VIH_PIC_Name_Driver}
    Wait and Input Text     ${CF_PIC_Name_PlaceOfBirth}    ${CF_VIH_PIC_Place_Brith}
    Wait and Input Text     ${CF_PIC_Name_DateOfBirth}    ${CF_VIH_PIC_Date_Of_Brith}
    Wait and Input Text     ${CF_PIC_Tax_Number}    ${CF_VIH_PIC_Tax_Number}
    Wait and Input Text     ${CF_PIC_Street}    ${CF_VIH_PIC_Street}
    Wait and Input Text     ${CF_PIC_House_Number}      ${CF_VIH_PIC_House_Number}
    Wait and Input Text     ${CF_PIC_Postal_Code}       ${CF_VIH_PIC_Postal_Code}
    Wait and Input Text     ${CF_PIC_City}      ${CF_VIH_PIC_City}
    Wait and Input Text     ${CF_PIC_Email}     ${CF_VIH_PIC_Email}
    Wait and Input Text     ${CF_PIC_Mobile_Phone}      ${CF_VIH_PIC_Mobile_Phone}
    Wait and Input Text     ${CF_PIC_Personal_Phone}    ${CF_VIH_PIC_Personal_Phone}
    Wait and Input Text     ${CF_PIC_Business_Phone}    ${CF_VIH_PIC_Business_Phone}

VIH_Input_Data_For_Vehicle_Block
    Scroll To Element       ${CF_VIH_Block}
    Wait and Input Text     ${CF_VIH_License_Number}    ${CF_VIH_VIH_License_Number}
    Wait and Input Text     ${CF_VIH_Production_Year}    ${CF_VIH_VIH_Production_Year}
    Wait and Input Text     ${CF_VIH_KW/PS}    ${CF_VIH_VIH_KW/PS}
    Wait and Input Text     ${CF_VIH_Mileage}    ${CF_VIH_VIH_Mileage}
    Wait and Click Element    ${CF_VIH_Leased}
    Wait and Click Element    ${CF_VIH_Leased_Yes}
    Wait and Input Text     ${CF_VIH_VIN_Number}    ${CF_VIH_VIH_VIN_Number}
    Wait and Input Text     ${CF_VIH_Manufacturer}    ${CF_VIH_VIH_Manufacturer}
    Wait and Input Text     ${CF_VIH_Model}    ${CF_VIH_VIH_Model}
    Wait and Input Text     ${CF_VIH_Vihicle_Type}    ${CF_VIH_VIH_Vihicle_Type}
    Wait and Input Text     ${CF_VIH_Engine_Type}    ${CF_VIH_VIH_Engine_Type}
    Wait and Input Text     ${CF_VIH_Vehicle_Plate}    ${CF_VIH_VIH_Vehicle_Plate}

VIH_Input_Data_For_Damage_Assistance_Block
    Scroll To Element       ${CF_DAS_Block}
    Wait and Click Element    ${CF_DAS_Picture_App}
    Wait and Click Element    ${CF_DAS_Picture_App_Yes}
    Wait and Click Element    ${CF_DAS_AR_Photo_App}
    Wait and Click Element    ${CF_DAS_AR_Photo_App_Yes}
    Click Element    ${CF_DAS_AR_Photo_App_Email}
    #Click Element    ${CF_DAS_AR_Photo_App_SMS}
    Wait and Click Element    ${CF_DAS_Appraiser}
    Wait and Click Element    ${CF_DAS_Appraiser_Yes}
    Wait and Click Element    ${CF_DAS_Cash_Set}
    Wait and Click Element    ${CF_DAS_Cash_Set_Yes}
    Scroll To Element         ${CF_DAS_Workshop}
    Wait and Click Element    ${CF_DAS_Workshop}
    Wait and Click Element    ${CF_DAS_Workshop_Yes}
    Scroll To Element         ${CF_DAS_Rental_Car}
    Wait and Click Element    ${CF_DAS_Rental_Car}
    Wait and Click Element    ${CF_DAS_Rental_Car_Yes}
    Wait and Input Text    ${CF_DAS_Rental_Car_Price}    1000
    Scroll To Element       ${CF_DAS_GDPR}
    Wait and Click Element    ${CF_DAS_GDPR}
    Wait and Click Element    ${CF_DAS_GDPR_Yes}

VIH_Input_Data_For_Damage_Report_Block
    Scroll To Element       ${CF_DAR_Block}
    Wait and Input Text     ${CF_DAR_DateOfLoss}    ${CF_VIH_DAR_DateOfLoss}
    Wait and Input Text     ${CF_DAR_Time}    ${CF_VIH_DAR_Time}
    Wait and Input Text     ${CF_DAR_Place}    ${CF_VIH_DAR_Place}
    Wait and Input Text     ${CF_DAR_Type_Damage}    ${CF_VIH_DAR_Type_Damage}
    Wait and Input Text     ${CF_DAR_Description}    ${CF_DAR_Description_Value}
    Scroll To Element       ${CF_DAR_Ready_For_Driving}
    Wait and Click Element    ${CF_DAR_Ready_For_Driving}
    Wait and Click Element    ${CF_DAR_Ready_For_Driving_Yes}
    Scroll To Element       ${CF_DAR_Legal_Intervention}
    Wait and Click Element    ${CF_DAR_Legal_Intervention}
    Wait and Click Element    ${CF_DAR_Legal_Intervention_Yes}
    Click Element    ${CF_DAR_Police_Cbx}
    Click Element    ${CF_DAR_File_Department_Cbx}
    Click Element    ${CF_DAR_Regulatory_Office_Cbx}
    Click Element    ${CF_DAR_Other_Cbx}
    Scroll To Element       ${CF_DAR_File_Type}
    Wait and Click Element    ${CF_DAR_File_Type}
    Wait and Click Element    ${CF_DAR_File_Type_Other}

Input_Data_For_Bank_Block
    Scroll To Element       ${CF_BANK_Block}
    Wait and Input Text     ${CF_BANK_IBAN_Number}    ${CF_BANK_IBAN_Number_value}

PROP_Building_Damage_Input_Data_For_New_Damage_Recording_Block
    [Arguments]     ${locator}
    Wait and Click Element    ${CF_NDR_Type_Damage}
    Wait and Click Element    ${locator}
    Wait Until Page Contains Element    ${CF_DAR_Type_Damage}   60
    Wait and Input Text     ${CF_NDR_Case_Number}    ${Case_Number}
    Wait and Input Text     ${CF_NDR_Insurance_Number}    ${CF_PRO_NDR_Insurance_Number}
    Wait and Input Text     ${CF_NDR_Street}    ${CF_PRO_NDR_Street}
    Wait and Input Text     ${CF_NDR_House_Number}      ${CF_PRO_NDR_House_Number}
    Wait and Input Text     ${CF_NDR_Postal_Code}       ${CF_PRO_NDR_Postal_Code}
    Wait and Input Text     ${CF_NDR_City}      ${CF_PRO_NDR_City}
    Wait and Input Text     ${CF_NDR_Apartment}      ${CF_PRO_NDR_Apartment}
    Wait and Input Text     ${CF_NDR_Floor}      ${CF_PRO_NDR_Floor}
    Wait and Input Text    ${CF_NDR_First_Last_Name}    ${CF_NDR_First_Last_Name_Value}
    Wait and Input Text    ${CF_NDR_Email_Contact_Person}    ${CF_NDR_NDR_Email_Value}
    Wait and Input Text    ${CF_NDR_Phone_Contact_Person}    ${CF_NDR_NDR_Mobile_No_Value}

PROP_Input_Data_For_Damage_Assistance_Block
    Scroll To Element         ${CF_DAS_Block}
    Wait and Click Element    ${CF_DAS_Picture_App}
    Wait and Click Element    ${CF_DAS_Picture_App_Yes}
    Click Element             ${CF_DAS_Picture_App_Email}
    #Click Element    ${CF_DAS_Picture_App_SMS}
    Wait and Click Element    ${CF_DAS_Appraiser}
    Wait and Click Element    ${CF_DAS_Appraiser_Yes}
    Wait and Click Element    ${CF_DAS_Cash_Set}
    Wait and Click Element    ${CF_DAS_Cash_Set_Yes}
    Scroll To Element         ${CF_DAR_Legal_Intervention}
    Wait and Click Element    ${CF_DAR_Legal_Intervention}
    Wait and Click Element    ${CF_DAR_Legal_Intervention_Yes}
    Click Element             ${CF_DAR_Police_Cbx}
    Click Element             ${CF_DAR_File_Department_Cbx}
    Click Element             ${CF_DAR_Regulatory_Office_Cbx}
    Click Element             ${CF_DAR_Other_Cbx}
    Scroll To Element         ${CF_DAS_GDPR}
    Wait and Click Element    ${CF_DAS_GDPR}
    Wait and Click Element    ${CF_DAS_GDPR_Yes}

PROP_Input_Data_For_Damage_Report_Block
    Scroll To Element       ${CF_DAR_Block}
    Click Element           ${CF_DAR_Type_Damage_Glass}
    Wait and Click Element  ${CF_DAR_Type_Damage_Glass_Door}
    Wait and Input Text     ${CF_DAR_Description}    ${CF_DAR_Description_Value}
    Click Element           ${CF_DAR_Estimated}
    Wait and Click Element  ${CF_DAR_Estimated_Over}
    Click Element           ${CF_DAR_Artisan}
    Wait and Click Element  ${CF_DAR_Artisan_Selection}

Open_Report_Page
    Open Page    ${HB_UD_Report}
    Wait Until Page Contains Element    ${Rep_Create_Report_Btn}    60

Open_Report_Page_with_All_Roles
    FOR     ${acc}  IN    @{Account}
        Login_Mcall_With_Account    ${acc}    ${Password}
        Open_Report_Page
        Log_Out
    END

Verify_Page_Not_Contain_User_Management
    Mouse Over      ${HB_User}
    Sleep    2
    Page Should Not Contain Element    ${HB_UD_User}

Verify_Page_Not_Contain_User_Management_with_Others_Roles
    FOR     ${acc}  IN    @{Account}[1:]
        Login_Mcall_With_Account    ${acc}    ${Password}
        Verify_Page_Not_Contain_User_Management
        Log_Out
    END

Verify_Page_Not_Contain_Report
    Mouse Over      ${HB_User}
    Sleep    2
    Page Should Not Contain Element    ${HB_UD_Report}

Log_Out
    Mouse Over      ${HB_User}
    Wait and Click Element    ${HB_UD_Logout}
    Wait Until Page Contains Element    ${LP_Login_btn}     60

Verify_Verify_Page_Not_Contain_Report_with_All_Roles
    FOR     ${acc}  IN    @{Account}
        Login_Mcall_With_Account    ${acc}    ${Password}
        Verify_Page_Not_Contain_Report
        Log_Out
    END

Select_Claim_Type_On_Dashboard
    [Arguments]     ${locator}
    Wait and Click Element    ${DB_Claim_Type}
    Wait and Click Element    ${locator}
    Click Element    ${Search_btn}
    Wait Until Element Is Enabled    ${DB_ViewDetail_btn}   60

Search_Claim
    [Arguments]     ${Seach_Option}      ${Search_Value}
    Wait and Click Element    ${DB_Search_Option}
    Wait and Click Element    ${Seach_Option}
    Wait and Input Text    ${DB_Search_Value}   ${Search_Value}
    Click Element    ${Search_btn}
    Wait Until Element Is Enabled    ${Search_btn}   60

Delete_A_Claim
    Wait and Click Element    ${DB_ViewDetail_btn}
    Wait and Click Element    ${CC_Delete_btn}
    Wait and Click Element    ${CC_Delete_Popup_Delete_btn}
    Wait Until Page Contains Element    ${Search_btn}   60
