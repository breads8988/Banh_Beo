*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${LP_Email}            xpath = //*[@id="user_email"]
${LP_Password}         xpath = //*[@id="user_password"]
${LP_Login_btn}        xpath = //*[@id="new_user"]//input[@name="commit"]
