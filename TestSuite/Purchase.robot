*** Settings ***
Test Setup          Set Selenium Speed  0.5
Test Teardown       Close All Browsers
Library             SeleniumLibrary
Library             OperatingSystem
Library				DateTimeTZ
Library             ImapLibrary2
Resource            ../Objects/Common.robot
Resource            ../Objects/Register.robot
Resource            ../Objects/Shopify.robot
Resource            ../Objects/Strapi/Login_Page.robot
Resource            ../Objects/Strapi/Test_Detail.robot
Resource            ../Step_Definition/KW_Common.robot
Resource            ../Step_Definition/KW_Strapi.robot
Resource            ../Step_Definition/KW_Register.robot
Resource            ../Step_Definition/KW_Shopify.robot
Resource            ../Step_Definition/KW_Email.robot

*** Variables ***
#${Registration_Number}		510-742-361

*** Test Cases ***
Purchase_A_Package
	Navigate_To_United_Kingdom_Site
	# Select_A_Package    Manchester	Arrival Day 2 PCR
	# Purchase_A_Package
	# #Verify_Email_Subject    ${Sender_NoReply}		${Order_Number}
	# Verify_Email_Body    	${Sender_NoReply}		${Order_Number}    Hi ${Per_First_Name}
	# #Verify_Email_Subject    ${Sender_Collinson}		Arrival Testing Booking Confirmation
	# #Verify_Email_Body    	contact@collinsontraveltest.com		Arrival Testing Booking Confirmation    Dear Quốc
	# Verify_Content_Email_Confirmation    ${Sender_Collinson}		Arrival Testing Booking Confirmation
	# #Verify_Email_Subject    ${Sender_Sender_Noti}    Booking Confirmation
	# Verify_Email_Body    ${Sender_Sender_Noti}    Booking Confirmation    This is confirmation from Collinson STAGING
	# Register_A_Test_Record    ${Reg_Test_Location_Manchester}
	# #Verify_Email_Subject    ${Sender_Collinson}		Thanks for registering your COVID-19 Test
	# #Verify_Email_Body    	${Sender_Collinson}		Thanks for registering your COVID-19 Test    Dear ${Per_First_Name} ${Per_Last_Name}
	# Verify_Content_Email_Register    ${Sender_Collinson}		Thanks for registering your COVID-19 Test
	# Login_Site_With_Account    ${Strapi_Email}    ${Strapi_Password}    Strapi		${Strapi_URL_Staging}
	# Search_And_Open_Test_Record    ${Registration_Number}
	# Perform_A_Test_Record    ${Strapi_TD_Mark_Negative}    negative
	# #Verify_Email_Subject    ${Sender_Collinson}		Your test results are ready
	# #Verify_Email_Body    	${Sender_Collinson}		Your test results are ready    Dear Quốc Hưng Hồ
	# Verify_Content_Email_Result    ${Sender_Collinson}		Your test results are ready
	# Switch Browser    Strapi
	# Delete_A_Test_Record
