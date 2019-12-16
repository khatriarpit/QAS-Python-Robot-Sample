*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}         https://qas.qmetry.com/bank/
${BROWSER}        Chrome
${DELAY}          0


*** Keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}

Close Application
    Close Browser