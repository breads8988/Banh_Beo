*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${CC_Back_btn}          //*[@id="claim-content-block"]//*[@class="back-button-content"]
${CC_Delete_btn}        //*[@id="claim-content-block"]//a[@data-commit="Delete"]
${CC_Delete_Popup_Delete_btn}   //*[@id="claims-show"]/div[6]//button[2]
${CC_Delete_Popup_Cancel_btn}   //*[@id="claims-show"]/div[6]//button[1]
