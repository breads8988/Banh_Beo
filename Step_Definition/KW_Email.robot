*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library				DateTimeTZ
Library             ImapLibrary2
Library   			String
Library  			Collections
Resource            ../Objects/Common.robot
Resource            ../Objects/Register.robot
Resource            ../Objects/Strapi/Login_Page.robot
Resource            ../Objects/Strapi/Left_Panel.robot
Resource            ../Objects/Shopify.robot
Resource            ../Step_Definition/KW_Common.robot
Resource            ../Step_Definition/KW_Register.robot

*** Variables ***

*** Keywords ***
Verify_Email_Subject
    [Arguments]     ${Sender}       ${Subject}
    Open Mailbox    host=imap.gmail.com  	user=${Per_Email}	password=${Email_Password}	port=993
    ${latest} = 	Wait For Mail    sender=${Sender}		subject=${Subject}	timeout=300
    Close Mailbox

Verify_Email_Body
    [Arguments]     ${Sender}       ${Subject}      @{Value}
    Open Mailbox    host=imap.gmail.com  	user=${Per_Email}	password=${Email_Password}	port=993
    ${latest} = 	Wait For Mail    sender=${Sender}		subject=${Subject}	timeout=300
    #${parts} =    	Walk Multipart Email    ${latest}
    #${payload} =    Get Multipart Payload    decode=True
    ${Body} =		Get Email Body    ${latest}
    ${Paser_Body}=  Remove String Using Regexp    ${Body}    <[^>]*>    #remove tags
    Should Contain    ${Paser_Body}    @{Value}
    Delete Email    ${latest}
    Close Mailbox

Verify_Content_Email_Confirmation
    [Arguments]     ${Sender}       ${Subject}
    Open Mailbox    host=imap.gmail.com  	user=${Per_Email}	password=${Email_Password}	port=993
    ${latest} = 	Wait For Mail    sender=${Sender}		subject=${Subject}	timeout=300
    ${parts} =    	Walk Multipart Email    ${latest}
    ${payload} =    Get Multipart Payload    decode=True
    ${Subject} =		Get Multipart Field    Subject
    ${Parsed_Subject}=    Split String    ${Subject}
    ${index}=	Get Index From List    ${Parsed_Subject}   -
    Convert To Integer    ${index}
    ${Order_Number}= 	Get From List    ${Parsed_Subject}   ${index+1}
    Log To Console    ${Order_Number}
    Set Suite Variable    ${Order_Number}    ${Order_Number}
    ${Body} =		Get Email Body    ${latest}
    ${Paser_Body}=  Remove String Using Regexp    ${Body}    <[^>]*>    #remove tags
    ${Parsed_Token}=    Split String    ${Paser_Body}
    #Log To Console    ${Parsed_Token}
    ${index}=	Get Index From List    ${Parsed_Token}    Reference(s):
    Convert To Integer    ${index}
    ${Code}= 	Get From List    ${Parsed_Token}   ${index+1}
    Log To Console    ${Code}
    ${CLSONCODE}=	Get Substring    ${Code}    0	12
    Log To Console    ${CLSONCODE}
    Set Suite Variable    ${CLSONCODE}    ${CLSONCODE}
    ${Booking_Confirmation_Link} =		Get Links From Email    ${latest}
    Set Suite Variable    ${Booking_Confirmation_Link}    ${Booking_Confirmation_Link}
    Delete Email    ${latest}
    Close Mailbox

Verify_Content_Email_Register
    [Arguments]     ${Sender}       ${Subject}
    Open Mailbox    host=imap.gmail.com  	user=${Per_Email}	password=${Email_Password}	port=993
    ${latest} = 	Wait For Mail    sender=${Sender}		subject=${Subject}	timeout=300
    ${Body} =		Get Email Body    ${latest}
    ${Paser_Body}=  Remove String Using Regexp    ${Body}    <[^>]*>    #remove tags
    ${Parsed_Token}=    Split String    ${Paser_Body}
    #Log To Console    ${Parsed_Token}
    ${index}=	Get Index From List    ${Parsed_Token}    no:
    Convert To Integer    ${index}
    ${Registration_Number}= 	Get From List    ${Parsed_Token}   ${index+1}
    Log To Console    ${Registration_Number}
    Set Suite Variable    ${Registration_Number}    ${Registration_Number}
    Delete Email    ${latest}
    Close Mailbox

Verify_Content_Email_Result
    [Arguments]     ${Sender}       ${Subject}
    Open Mailbox    host=imap.gmail.com  	user=${Per_Email}	password=${Email_Password}	port=993
    ${latest} = 	Wait For Mail    sender=${Sender}		subject=${Subject}	timeout=300
    ${Result_Link} =    Get Links From Email    ${latest}
    Set Suite Variable    ${Result_Link}    ${Result_Link}
    Log To Console    ${Result_Link}
    Delete Email    ${latest}
    #${Body} =		Get Email Body    ${latest}
    #${Paser_Body}=  Remove String Using Regexp    ${Body}    <[^>]*>    #remove tags
    #${Parsed_Token}=    Split String    ${Paser_Body}
    #Log To Console    ${Parsed_Token}
    #${index}=	Get Index From List    ${Parsed_Token}    no:
    #Convert To Integer    ${index}
    #${Registration_Number}= 	Get From List    ${Parsed_Token}   ${index+1}
    #Log To Console    ${Registration_Number}
    #Set Suite Variable    ${Registration_Number}    ${Registration_Number}
    Close Mailbox
