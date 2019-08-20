*** Settings ***
Resource         ../../../steps/mobileweb/step_definitions.robot
Test Setup	Open Application
Test Teardown	Close Application

*** Test Cases ***
Mobileweb Test case

	
	Go To	https://www.gmail.com
	Clear Element Text    id=identifierId
	Input Text	id=identifierId    demoqas2019@gmail.com
	Click Element	xpath=//div[@id='view_container']/div/div/div[2]/div/div
	Element Attribute Value Should Be  id=identifierId  value  demoqas2019@gmail.com
	Click Element	xpath=//div[@id='identifierNext']/span/span
	Wait Until Element Is Visible	name=password
	Clear Element Text    name=password
	Input Text	name=password    QAS@2019
	Click Element	xpath=//div[@id='view_container']/div/div/div[2]/div
	Element Attribute Value Should Be  name=password  value  QAS@2019
	Click Element	xpath=//div[@id='passwordNext']/span/span



