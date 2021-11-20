*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${NewCase_btn}                      //*[@id="claim-content-block"]/div[2]/div[2]/a
${Search_btn}                       //*[@id="search_claim_form"]//input[@name="commit"]
${DB_ViewDetail_btn}                //*[@id="claims_table"]/tbody/tr[1]/td[7]/a
${DB_Claim_Type}                    //*[@id="claimTypeSection"]/div/button
${DB_Claim_Type_VEH}                //*[@id="claimTypeSection"]//ul/li[1]
${DB_Claim_Type_PROP_Liability}     //*[@id="claimTypeSection"]//ul/li[2]
${DB_Claim_Type_PROP_Building}      //*[@id="claimTypeSection"]//ul/li[3]
${DB_Search_Option}                 //*[@id="search_claim_form"]//button[@data-id="search_option"]
${DB_Search_Option_Case_Number}     //button[@data-id="search_option"]/..//ul//span[contains(text(),"Case number")]/..
${DB_Search_Value}                  //*[@id="search_attr"]
