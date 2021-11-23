*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Strapi_LP_Email}                  //*[@id="email"]
${Strapi_LP_Password}               //*[@id="password"]
${Strapi_LP_Login_Btn}              //*[@id="app"]//button[@type="submit"]
