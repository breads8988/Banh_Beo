*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${CF_Back_btn}                      //*[@id="new_claim"]/div[1]//a
${CF_Emergency_Call_btn}            //*[@id="new_claim"]/div[2]//a
${CF_Claim_Type}                    //*[@id="claim_claim_type"]/../button
${CF_Claim_Type_Vehicle}            //*[@id="claim_claim_type"]/../button/../div//li[1]/a
${CF_Claim_Type_Property}           //*[@id="claim_claim_type"]/../button/../div//li[2]/a
${CF_NDR_Block}                     //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]
${CF_NDR_Type_Damage}               //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//button
${CF_NDR_Type_Damage_Fully}         //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//li[1]
${CF_NDR_Type_Damage_Partial}       //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//li[2]
${CF_NDR_Type_Damage_Liability}     //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//li[3]
${CF_NDR_Type_Damage_Building_Damage}       //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//li[1]
${CF_NDR_Type_Damage_Property_Liability}    //*[@id="new_claim"]//div[@class="claim_info new-claim-form"]//div[@class="form-group row"]/div[1]//li[2]
${CF_NDR_Case_Number}               //*[@id="claim_claim_number"]
${CF_NDR_Property}                  //*[@id="claim_insured_building_id"]/../button
${CF_NDR_Insurer}                   //*[@id="additional_insurer_name"]
${CF_NDR_Insurance_Number}          //*[@id="claim_policy_number"]
${CF_NDR_Street}                    //*[@id="claim_claimant_street"]
${CF_NDR_House_Number}              //*[@id="claim_claimant_house_number"]
${CF_NDR_Postal_Code}               //*[@id="claim_claimant_postcode"]
${CF_NDR_City}                      //*[@id="claim_claimant_city"]
${CF_NDR_Apartment}                 //*[@id="claim_flat"]
${CF_NDR_Floor}                     //*[@id="claim_floor"]
${CF_NDR_First_Last_Name}           //*[@id="claim_claimant_name"]
${CF_NDR_Email_Contact_Person}      //*[@id="claim_claimant_email"]
${CF_NDR_Phone_Contact_Person}      //*[@id="claim_claimant_phone"]
${CF_PIC_Block}                     //*[@id="new_claim"]//div[@class="new-claim-form personal_info"]
${CF_PIC_Name_Holder}               //*[@id="claim_vehicle_owner_name"]
${CF_PIC_Name_Driver}               //*[@id="claim_driver_name"]
${CF_PIC_Name_PlaceOfBirth}         //*[@id="claim_driver_place_of_birth"]
${CF_PIC_Name_DateOfBirth}          //*[@id="driver_date_of_birth"]
${CF_PIC_Tax_Number}                //*[@id="claim_driver_tax_number"]
${CF_PIC_Street}                    //*[@id="claim_driver_street"]
${CF_PIC_House_Number}              //*[@id="claim_driver_house_number"]
${CF_PIC_Postal_Code}               //*[@id="claim_driver_postcode"]
${CF_PIC_City}                      //*[@id="claim_driver_city"]
${CF_PIC_Email}                     //*[@id="claim_driver_email"]
${CF_PIC_Mobile_Phone}              //*[@id="claim_driver_phone"]
${CF_PIC_Personal_Phone}            //*[@id="claim_driver_tel_private"]
${CF_PIC_Business_Phone}            //*[@id="claim_driver_tel_business"]
${CF_VIH_Block}                     //*[@id="new_claim"]//div[@class="new-claim-form vehicle"]
${CF_VIH_License_Number}            //*[@id="claim_vehicle_akz"]
${CF_VIH_Production_Year}           //*[@id="claim_vehicle_construction_year"]
${CF_VIH_KW/PS}                     //*[@id="claim_vehicle_kw_ps"]
${CF_VIH_Mileage}                   //*[@id="claim_vehicle_km_stand"]
${CF_VIH_Leased}                    //*[@id="new_claim"]//div[@class="new-claim-form vehicle"]//button
${CF_VIH_Leased_Yes}                //*[@id="new_claim"]//div[@class="new-claim-form vehicle"]//button/../div//li[1]/a
${CF_VIH_Leased_No}                 //*[@id="new_claim"]//div[@class="new-claim-form vehicle"]//button/../div//li[2]/a
${CF_VIH_VIN_Number}                //*[@id="claim_vehicle_fin_nr"]
${CF_VIH_Manufacturer}              //*[@id="claim_vehicle_manufacturer"]
${CF_VIH_Model}                     //*[@id="claim_vehicle_model"]
${CF_VIH_Vihicle_Type}              //*[@id="claim_vehicle_type"]
${CF_VIH_Engine_Type}               //*[@id="claim_vehicle_engine_type"]
${CF_VIH_Vehicle_Plate}             //*[@id="claim_vehicle_plate"]
${CF_DAS_Block}                     //*[@id="new_claim"]//div[@class="assistance new-claim-form"]
${CF_DAS_Picture_App}               //*[@id="claim_picture_app_enabled"]/../button
${CF_DAS_Picture_App_Yes}           //*[@id="claim_picture_app_enabled"]/../button/../div//li[1]/a
${CF_DAS_Picture_App_No}            //*[@id="claim_picture_app_enabled"]/../button/../div//li[2]/a
${CF_DAS_Picture_App_SMS}           //*[@id="claim_picture_app_sms_enabled"]
${CF_DAS_Picture_App_Email}         //*[@id="claim_picture_app_email_enabled"]
${CF_DAS_AR_Photo_App}              //*[@id="claim_ar_photo_app_enabled"]/../button
${CF_DAS_AR_Photo_App_Yes}          //*[@id="claim_ar_photo_app_enabled"]/../button/../div//li[1]/a
${CF_DAS_AR_Photo_App_No}           //*[@id="claim_ar_photo_app_enabled"]/../button/../div//li[2]/a
${CF_DAS_AR_Photo_App_SMS}        //*[@id="claim_ar_photo_app_sms_enabled"]
${CF_DAS_AR_Photo_App_Email}          //*[@id="claim_ar_photo_app_email_enabled"]
${CF_DAS_Appraiser}                 //*[@id="claim_expert_enabled"]/../button
${CF_DAS_Appraiser_Yes}             //*[@id="claim_expert_enabled"]/../button/../div//li[1]/a
${CF_DAS_Appraiser_No}              //*[@id="claim_expert_enabled"]/../button/../div//li[2]/a
${CF_DAS_Cash_Set}                  //*[@id="claim_fictitious_billing_enabled"]/../button
${CF_DAS_Cash_Set_Yes}              //*[@id="claim_fictitious_billing_enabled"]/../button/../div//li[1]/a
${CF_DAS_Cash_Set_No}               //*[@id="claim_fictitious_billing_enabled"]/../button/../div//li[2]/a
${CF_DAS_Workshop}                  //*[@id="claim_workshop_enabled"]/../button
${CF_DAS_Workshop_Yes}              //*[@id="claim_workshop_enabled"]/../button/../div//li[1]/a
${CF_DAS_Workshop_No}               //*[@id="claim_workshop_enabled"]/../button/../div//li[2]/a
${CF_DAS_Rental_Car}                //*[@id="claim_is_rental_car"]/../button
${CF_DAS_Rental_Car_Yes}            //*[@id="claim_is_rental_car"]/../button/../div//li[1]/a
${CF_DAS_Rental_Car_No}             //*[@id="claim_is_rental_car"]/../button/../div//li[2]/a
${CF_DAS_Rental_Car_Price}          //*[@id="claim_car_rental_price"]
${CF_DAS_GDPR}                      //*[@id="claim_eu_dsg_vo_agreement_ast_enabled"]/../button
${CF_DAS_GDPR_Yes}                  //*[@id="claim_eu_dsg_vo_agreement_ast_enabled"]/../button/../div//li[1]/a
${CF_DAS_GDPR_No}                   //*[@id="claim_eu_dsg_vo_agreement_ast_enabled"]/../button/../div//li[2]/a
${CF_DAR_Block}                     //*[@id="new_claim"]//div[@class="new-claim-form notification"]
${CF_DAR_DateOfLoss}                //*[@id="accident_date"]
${CF_DAR_Time}                      //*[@id="claim_accident_time"]
${CF_DAR_Place}                     //*[@id="claim_accident_place"]
${CF_DAR_Type_Damage}               //*[@id="claim_damage_types"]
${CF_DAR_Type_Damage_Water}         //*[@id="damage-types-container"]/div[1]/a
${CF_DAR_Type_Damage_Storm}         //*[@id="damage-types-container"]/div[2]/a
${CF_DAR_Type_Damage_Fire}          //*[@id="damage-types-container"]/div[3]/a
${CF_DAR_Type_Damage_Elementary}    //*[@id="damage-types-container"]/div[4]/a
${CF_DAR_Type_Damage_Glass}         //*[@id="damage-types-container"]/div[5]/a
${CF_DAR_Type_Damage_Theft}         //*[@id="damage-types-container"]/div[6]/a
${CF_DAR_Type_Damage_Others}         //*[@id="damage-types-container"]/div[7]/a
${CF_DAR_Type_Damage_Glass_Door}    //*[@id="damage-types-container"]/div[2]/a
${CF_DAR_Description}               //*[@id="claim_damage_description"]
${CF_DAR_Estimated}                 //*[@id="claim_estimated_amount_of_damage"]/../button
${CF_DAR_Estimated_Under}           //*[@id="claim_estimated_amount_of_damage"]/../button/../div//li[2]/a
${CF_DAR_Estimated_Over}            //*[@id="claim_estimated_amount_of_damage"]/../button/../div//li[3]/a
${CF_DAR_Artisan}                   //*[@id="claim_craftsman"]/../button
${CF_DAR_Artisan_Own_Network}       //*[@id="claim_craftsman"]/../button/../div//li[2]/a
${CF_DAR_Artisan_Selection}         //*[@id="claim_craftsman"]/../button/../div//li[3]/a
${CF_DAR_Ready_For_Driving}         //*[@id="claim_ready_for_driving"]/../button
${CF_DAR_Ready_For_Driving_Yes}     //*[@id="claim_ready_for_driving"]/../button/../div//li[1]/a
${CF_DAR_Ready_For_Driving_No}      //*[@id="claim_ready_for_driving"]/../button/../div//li[2]/a
${CF_DAR_Legal_Intervention}        //*[@id="claim_intervention_forces_enabled"]/../button
${CF_DAR_Legal_Intervention_Yes}    //*[@id="claim_intervention_forces_enabled"]/../button/../div//li[1]/a
${CF_DAR_Legal_Intervention_No}     //*[@id="claim_intervention_forces_enabled"]/../button/../div//li[2]/a
${CF_DAR_Police_Cbx}                //*[@id="claim_police_enabled"]
${CF_DAR_File_Department_Cbx}       //*[@id="claim_fire_department_enabled"]
${CF_DAR_Regulatory_Office_Cbx}     //*[@id="claim_regulatory_agency_enabled"]
${CF_DAR_Other_Cbx}                 //*[@id="claim_wff_enabled"]
${CF_DAR_File_Type}                 //*[@id="custom_document_type_id"]/../button
${CF_DAR_File_Type_Pictures}        //*[@id="custom_document_type_id"]/../button/../div//li[1]/a
${CF_DAR_File_Type_Cost_Est}        //*[@id="custom_document_type_id"]/../button/../div//li[2]/a
${CF_DAR_File_Type_Invoice}         //*[@id="custom_document_type_id"]/../button/../div//li[3]/a
${CF_DAR_File_Type_Other}           //*[@id="custom_document_type_id"]/../button/../div//li[4]/a
${CF_DAR_Upload_File_btn}           //*[@id="document"]/../div
${CF_BANK_Block}                    //*[@id="new_claim"]//div[@class="bank_details new-claim-form"]
${CF_BANK_IBAN_Number}              //*[@id="claim_iban"]
${CF_Submit_Case_btn}               //*[@id="submitClaim"]
