*** Settings ***
Resource         ../../../steps/mobileweb/step_definitions.robot
Library			../../../steps/mobileweb/library.py
Test Setup	Open Application
Test Teardown	Close Application

*** Test Cases ***
VerifyCreditedAmount

	# Navigate to app URL
	Go To	https://qas.qmetry.com/bank
 	Maximize Browser Window
	
	# login
	Clear Element Text    id=txtUsername
	Input Text	id=txtUsername    Bob
	Clear Element Text    id=txtPassword
	Input Text	id=txtPassword    Bob
	Click Element	id=btnLogin
	Wait Until Element Is Visible    xpath=.//*[@placeholder='Enter amount for credit']  

	# Verify successful login
	Element Should Be Visible	xpath=//button	timeout= 30 seconds

	# Get current balance
	${currentBalance}=    Get Text    id=user-globe-rank
	
	# Credit amount
	Input Text	xpath=.//*[@placeholder='Enter amount for credit']  1000
	Click Element	xpath=//div[2]/span/button

	# verify transaction successful message 
	Element Should Be Enabled	xpath=//div/div

	# Verify updated amount - (Custom step)
	${updatedBalance}=	Update ${currentBalance} with 1000
	Element Text Should Be		id=user-globe-rank		${updatedBalance}

	# logout
	Click Element	xpath=//button

	# Verify successful logout
	Element Should Be Enabled	id=btnLogin

*** Keywords ***
Update ${currentBalance} with ${amount}
	${updatedBalance}=		credit		${currentBalance}		${amount}
	[Return]  ${updatedBalance}