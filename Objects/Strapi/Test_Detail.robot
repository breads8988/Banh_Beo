*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Strapi_TD_Process_State}          //*[@id="processState"]
${Strapi_TD_TestKitId}              //*[@id="testKitId"]
${Strapi_TD_Perform_CheckIn}        //*[@id="app"]//p[contains(text(),'Perform Check In')]/..
${Strapi_TD_Mark_Negative}          //*[@id="app"]//p[contains(text(),'Mark as negative')]/..
${Strapi_TD_Mark_Positive}          //*[@id="app"]//p[contains(text(),'Mark as positive')]/..
${Strapi_TD_Mark_Inclusive}         //*[@id="app"]//p[contains(text(),'Mark as inconclusive')]/..
${Strapi_TD_Delete_Btn}             //*[@id="app"]//p[contains(text(),'Delete this entry')]/..
${Strapi_TD_Delete_Popup_Yes}       //button/span[contains(text(),'Yes, confirm')]/..
${Strapi_TD_Final_Result}           //*[@id="finalResult"]
