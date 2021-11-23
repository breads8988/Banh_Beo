*** Settings ***
Library           SeleniumLibrary
Resource            ../Objects/Common.robot
Resource            ../Step_Definition/KW_Common.robot
Resource            ../Step_Definition/KW_Strapi.robot
Resource            ../Step_Definition/KW_Register.robot
Resource            ../Step_Definition/KW_Shopify.robot

*** Variables ***

#common
${Shop_Password_Btn}                //*[@id="shopify-section-password-header"]//a
${Shop_Password_Box}                //*[@id="password"]
${Shop_Enter_Btn}                   //*[@id="login_form"]//input[@type="submit"]
${Shop_Shop_Dropdown}               //*[@id="AccessibleNav"]/li[1]/a
${Shop_Shop_Dropdown_UK}            //*[@id="MenuParent-1"]//a[contains(text(),'United Kingdom')]
${Shop_Test_Type}                   //*[@id="split-button-basic-0"]/div
${Shop_Next_Month_Btn}              //div[@class="DayPicker-wrapper"]//span[2]
${Shop_Date_Today}                  //div[@class="DayPicker-Day DayPicker-Day--today"]
${Shop_Book_Now_Btn}                //button[contains(text(),'Book Now')]
${Shop_CheckOut_Btn}                //*[@id="PageContainer"]//button[@name="checkout"]
${Shop_Email}                       //*[@id="checkout_email"]
${Shop_First_Name}                  //*[@id="checkout_billing_address_first_name"]
${Shop_Last_Name}                   //*[@id="checkout_billing_address_last_name"]
${Shop_Address}                     //*[@id="checkout_billing_address_address1"]
${Shop_Apartment}                   //*[@id="checkout_billing_address_address2"]
${Shop_City}                        //*[@id="checkout_billing_address_city"]
${Shop_Country}                     //*[@id="checkout_billing_address_country"]
${Shop_Country_VN}                  //*[@id="checkout_billing_address_country"]/option[@value="Vietnam"]
${Shop_Postal_Code}                 //*[@id="checkout_billing_address_zip"]
${Shop_Phone}                       //*[@id="checkout_billing_address_phone"]
${Shop_Cont_Payment_Btn}            //*[@id="continue_button"]
${Shop_Card_Number}                 //*[@id="number"]
${Shop_Card_Name}                   //*[@id="name"]
${Shop_Card_Expired_Date}           //*[@id="expiry"]
${Shop_Card_Expired_Month}          //*[@id="expiry_month"]
${Shop_Card_Expired_Year}           //*[@id="expiry_year"]
${Shop_Card_Security_Code}          //*[@id="verification_value"]
${Shop_Card_Paynow_Btn}             //*[@id="continue_button"]
${Shop_ThankYou}                    //*[@id="main-header"]
${Shop_Order_Number}                //span[@class="os-order-number"]
