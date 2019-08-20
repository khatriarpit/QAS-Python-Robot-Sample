*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported AppiumLibrary.
Library           AppiumLibrary

*** Variables ***
${REMOTE.SERVER}         http://127.0.0.1:4723/wd/hub
${PLATFORM_VERSION}      6.0.1
${PLATFORM_NAME}         Android
${DEVICE_NAME}           Infostretch (Galaxy S5)
${PACKAGE_NAME}          com.qmetry.bank.bankingapplication
${ACTIVITY_NAME}         com.qmetry.bank.bankingapplication.HomePageActivity


*** Keywords ***
Open Application
    AppiumLibrary.Open Application    ${REMOTE.SERVER}    platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}     deviceName=${DEVICE_NAME}   appPackage=${PACKAGE_NAME}  appActivity=${ACTIVITY_NAME}