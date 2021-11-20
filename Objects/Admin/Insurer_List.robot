*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Ins_New_Insurer_btn}       xpath = //*[@id="claim-content-block"]/a
${Ins_Pagination_Page4}      xpath = //div[@class="pagination"]//a[3]
${Ins_Pagination_Page3}      xpath = //div[@class="pagination"]//a[2]
${Ins_Table_Logo}            xpath = //*[@id="insurers_table"]//td[contains(text(),'Automation')]/../td[1]
${Ins_Table_Name}            xpath = //*[@id="insurers_table"]//td[contains(text(),'Automation')]/../td[2]
${Ins_Table_Email}           xpath = //*[@id="insurers_table"]//td[contains(text(),'Automation')]/../td[3]
${Ins_Table_Phone}           xpath = //*[@id="insurers_table"]//td[contains(text(),'Automation')]/../td[4]
${Ins_Table_Settings}        xpath = //*[@id="insurers_table"]//td[contains(text(),'Automation')]/../td[5]/a
