*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${HB_Dashboard}         xpath = //*[@id="bs-example-navbar-collapse-1"]/ul/li[1]/a
${HB_User}              xpath = //*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a
${HB_Language}          xpath = //*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a
${HB_UD_User}           xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-users"]
${HB_UD_Property}       xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-building"]
${HB_UD_Report}         xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-file-text-o"]
${HB_UD_Analytics}      xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-line-chart"]
${HB_UD_Change_Pass}    xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-cog"]
${HB_UD_Logout}         xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-sign-out"]
${HB_UD_Insurer}        xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-university"]
${HB_UD_Klickmal}       xpath = //*[@id="navbar-dropdown"]//i[@class="fa fa-list"]
${HB_Language_DE}       xpath = //a[@href="/?locale=de"]
${HB_Language_EN}       xpath = //a[@href="/?locale=en"]
${HB_Language_FR}       xpath = //a[@href="/?locale=fr"]
${HB_Language_IT}       xpath = //a[@href="/?locale=it"]
${HB_Language_RO}       xpath = //a[@href="/?locale=ro"]
${HB_Language_RU}       xpath = //a[@href="/?locale=ru"]
