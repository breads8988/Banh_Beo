*** Settings ***
Library           SeleniumLibrary

*** Variables ***

${Ins_Settings}                 xpath = //*[@id="sidebar-wrapper"]//ul/li[1]/a
${Ins_Property}                 xpath = //*[@id="sidebar-wrapper"]//ul/li[2]/a
${Ins_Status}                   xpath = //*[@id="sidebar-wrapper"]//ul/li[3]/a
${Ins_Feature_Access}           xpath = //*[@id="sidebar-wrapper"]//ul/li[4]/a
${Ins_Granular_Access}          xpath = //*[@id="sidebar-wrapper"]//ul/li[5]/a
${Ins_Custom_Field}             xpath = //*[@id="sidebar-wrapper"]//ul/li[6]/a
${Ins_Type_Of_Damage}           xpath = //*[@id="sidebar-wrapper"]//ul/li[7]/a
${Ins_Standard_Text}            xpath = //*[@id="sidebar-wrapper"]//ul/li[8]/a
${Ins_Custom_Variables}         xpath = //*[@id="sidebar-wrapper"]//ul/li[9]/a
${Ins_Manage_Upload_Doc}        xpath = //*[@id="sidebar-wrapper"]//ul/li[10]/a
${Ins_Questionnaire}            xpath = //*[@id="sidebar-wrapper"]//ul/li[11]/a
${FA_User_Management}           xpath = //*[@id="feature_user_management"]/..
${FA_Report}                    //*[@id="feature_report"]/..
${FA_Checkbox}                  label.mcall-checkbox-mask
${FA_Save_Btn}                  //input[@value="Save"]
