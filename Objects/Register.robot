*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Reg_Next_Btn}                     //*[@id="__layout"]//button
${Reg_Order_Number}                 //*[@id="__layout"]//fieldset/div[1]/input
${Reg_CLSON_Code}                   //*[@id="__layout"]//fieldset/div[2]/input
${Reg_Test_Location}                //*[@id="__layout"]//fieldset/div[3]/select
${Reg_Test_Location_Manchester}     //*[@id="__layout"]//fieldset/div[3]/select/option[@value="manchester-airport-walk-through"]
${Reg_First_Name}                   //*[@id="__layout"]//fieldset/div[4]/input
${Reg_Last_Name}                    //*[@id="__layout"]//fieldset/div[5]/input
${Reg_Passport_No}                  //*[@id="__layout"]//fieldset/div[6]/input
${Reg_Passport_Issuing_Country}     //*[@id="__layout"]//fieldset/div[7]/select
${Reg_Passport_Issuing_By_VN}       //*[@id="__layout"]//fieldset/div[7]/select/option[@value="VN"]
${Reg_Email}                        //*[@id="__layout"]//fieldset/div[8]/input
${Reg_Confirm_Email}                //*[@id="__layout"]//fieldset/div[9]/input
${Reg_Phone}                        //*[@id="__layout"]//fieldset/div[10]/input
${Reg_Date_Of_Birth}                //*[@id="__layout"]//fieldset/div[11]/input
${Reg_Gender}                       //*[@id="__layout"]//fieldset/div[12]/select
${Reg_Gender_Male}                  //*[@id="__layout"]//fieldset/div[12]/select/option[1]
${Reg_Gender_Female}                //*[@id="__layout"]//fieldset/div[12]/select/option[2]
${Reg_Ethnicity}                    //*[@id="__layout"]//fieldset/div[13]/select
${Reg_Ethnicity_Asian}              //*[@id="__layout"]//fieldset/div[13]/select/option[15]
${Reg_Vaccinated}                   //*[@id="__layout"]//fieldset/div[14]/select
${Reg_Vaccinated_Yes}               //*[@id="__layout"]//fieldset/div[14]/select/option[1]
${Reg_Vaccinated_No}                //*[@id="__layout"]//fieldset/div[14]/select/option[2]
${Reg_Additional_Info}              //*[@id="__layout"]//fieldset/div[15]/input
${Reg_Arrival_Date}                 //*[@id="__layout"]//fieldset/div[16]/input
${Reg_Transit_Date}                 //*[@id="__layout"]//fieldset/div[17]/input
${Reg_Flight_Number}                //*[@id="__layout"]//fieldset/div[18]/input
${Reg_Country_Before_Arrive}        //*[@id="__layout"]//fieldset/div[19]/select
${Reg_Country_Before_Arrive_VN}     //*[@id="__layout"]//fieldset/div[19]/select/option[@value="VN"]
${Reg_Isolation_Addr_1}             //*[@id="__layout"]//fieldset/div[20]/input
${Reg_Isolation_Addr_2}             //*[@id="__layout"]//fieldset/div[21]/input
${Reg_Isolation_Addr_3}             //*[@id="__layout"]//fieldset/div[22]/input
${Reg_Isolation_City}               //*[@id="__layout"]//fieldset/div[23]/input
${Reg_Isolation_Postal_Code}        //*[@id="__layout"]//fieldset/div[24]/input
${Reg_Home_Isolation_Addr_Cbx}      //*[@id="__layout"]//fieldset/div[25]//input
${Reg_Home_Country}                 //*[@id="__layout"]//fieldset/div[31]/select
${Reg_Home_Country_VN}              //*[@id="__layout"]//fieldset/div[31]/select/option[@value="VN"]
${Reg_Terms_Cbx}                    //*[@id="__layout"]//fieldset/div[32]//input
${Reg_Submit_Btn}                   //*[@id="__layout"]//form/button
${Reg_Another_Test_Btn}             //*[@id="__layout"]//button
