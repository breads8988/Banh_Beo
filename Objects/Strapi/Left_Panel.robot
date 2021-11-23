*** Settings ***
Library           SeleniumLibrary

*** Variables ***

#common
${Strapi_Left_OnSiteTest}           //*[@id="app"]//span[contains(text(),'On-Site Tests')]/..
${Strapi_Search_Box}                //*[@id="app"]//div[@class="sc-bTfYFJ erjMwV"]//input
${Strapi_Test_Record}               //*[@id="app"]//table/tbody/tr//td[2]
${Strapi_Test_Record_Table}         //*[@id="app"]//table/tbody/tr/td
