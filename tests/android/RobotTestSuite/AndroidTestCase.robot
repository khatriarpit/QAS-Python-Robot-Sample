*** Settings ***
Resource         ../../../steps/android/step_definitions.robot
Test Setup	Open Application
Test Teardown	Close Application

*** Test Cases ***
Android Test case

	
	Wait Until Element Is Visible	accessibility_id=email
	Input Text	accessibility_id=email    Bob
	Element Text Should Be	accessibility_id=email    Bob
	Input Text	accessibility_id=password    Bob
	Element Text Should Be	accessibility_id=password    Bob
	Click Element	accessibility_id=signIn
	Wait Until Element Is Visible	accessibility_id=transacations
	Click Element	accessibility_id=transacations
	Input Text	accessibility_id=enterAmount    1000
	Page Should Contain Element	accessibility_id=credit
	Click Element	accessibility_id=credit
	Click Element	accessibility_id=Fund Transfer
	Click Element	id=com.qmetry.bank.bankingapplication:id/selectPayee
	Click Element	id=android:id/text1
	Input Text	accessibility_id=enterAmount    34
	Element Text Should Be	accessibility_id=enterAmount    34
	Click Element	accessibility_id=fund transfer



