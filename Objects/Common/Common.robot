*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${URL_Staging}                  https://mcall-qa.motionscloud.com/users/sign_in?locale=en
${URL_UAT}                      https://mcall-uat.motionscloud.com/users/sign_in?locale=en
${Auto_Mcall_Admin}             hunghq8988@gmail.com
${Auto_Insurer_Admin}           auto_insurer_admin@yopmail.com
${Auto_Adjuster}                auto_adjuster@yopmail.com
${Auto_Adjuster_Property}       auto_adjuster_property@yopmail.com
${Auto_Adjuster_Vehicle}        auto_adjuster_vehicle@yopmail.com
${Auto_Building_Manager}        auto_building_manager@yopmail.com
${Auto_Lead_Property}           auto_leader_property@yopmail.com
${Auto_Lead_Vehicle}            auto_leader_vehicle@yopmail.com
${Password}                     Mcall@123
${CF_NDR_Case_Number_Value}     Auto_Case_Number_New
${CF_NDR_First_Last_Name_Value}       Auto_First_Last_Name_New
${CF_NDR_NDR_Email_Value}             Auto_NDR_Email_New@yopmail.com
${CF_NDR_NDR_Mobile_No_Value}         +84399200013
${CF_PRO_NDR_Insurance_Number}  Auto_PRO_NDR_Insurance_Number_New
${CF_PRO_NDR_Street}            Auto_PRO_NDR_Street_New
${CF_PRO_NDR_House_Number}      Auto_PRO_NDR_House_Number_New
${CF_PRO_NDR_Postal_Code}       Auto_PRO_NDR_Postal_Code_New
${CF_PRO_NDR_City}              Auto_PRO_NDR_City_New
${CF_PRO_NDR_Apartment}         Auto_PRO_NDR_Apartment_New
${CF_PRO_NDR_Floor}             Auto_PRO_NDR_Floor_New
${CF_VIH_PIC_Name_Holder}       Auto_VIH_Name_Holder_New
${CF_VIH_PIC_Name_Driver}       Auto_VIH_Name_Driver_New
${CF_VIH_PIC_Place_Brith}       Auto_VIH_Place_Brith_New
${CF_VIH_PIC_Date_Of_Brith}     08.09.1988
${CF_VIH_PIC_Tax_Number}        Auto_VIH_Tax_Number_New
${CF_VIH_PIC_Street}            Auto_VIH_Street_New
${CF_VIH_PIC_House_Number}      Auto_VIH_House_Number_New
${CF_VIH_PIC_Postal_Code}       Auto_VIH_Postal_Code_New
${CF_VIH_PIC_City}              Auto_VIH_City_New
${CF_VIH_PIC_Email}             Auto_VIH_PIC_Email_New@yopmail.com
${CF_VIH_PIC_Mobile_Phone}      +84399200013
${CF_VIH_PIC_Personal_Phone}    +84399200013
${CF_VIH_PIC_Business_Phone}    +84399200013
${CF_VIH_VIH_License_Number}    Auto_VIH_License_Number_New
${CF_VIH_VIH_Production_Year}   Auto_VIH_Production_Year_New
${CF_VIH_VIH_KW/PS}             Auto_VIH_KW/PS_New
${CF_VIH_VIH_Mileage}           Auto_VIH_Mileage_New
${CF_VIH_VIH_VIN_Number}        Auto_VIH_VIN_Number_New
${CF_VIH_VIH_Manufacturer}      Auto_VIH_Manufacturer_New
${CF_VIH_VIH_Model}             Auto_VIH_Model_New
${CF_VIH_VIH_Vihicle_Type}      Auto_VIH_Vihicle_Type_New
${CF_VIH_VIH_Engine_Type}       Auto_VIH_Engine_Type_New
${CF_VIH_VIH_Vehicle_Plate}     Auto_VIH_Vehicle_Plate_New
${CF_VIH_DAR_DateOfLoss}        08.09.1988
${CF_VIH_DAR_Time}              Auto_VIH_DAR_Time_New
${CF_VIH_DAR_Place}             Auto_VIH_DAR_Place_New
${CF_VIH_DAR_Type_Damage}       Auto_VIH_DAR_Type_Damage_New
${CF_DAR_Description_Value}       Auto_VIH_DAR_Description_New
${CF_BANK_IBAN_Number_value}    Auto_IBAN_Number_New
