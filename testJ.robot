*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${DELAY}    0
${NORMAL URL}    https://www.google.co.th/
${URL}    http://www.cs.kku.ac.th/

*** Test Cases ***
Open Browser
    Open Browser    ${NORMAL URL}    ${BROWSER}
	Location Should Be    ${NORMAL URL}
	Go To    ${URL}
	Click Button    submit
	Location Should Be    ${URL}
	Close Browser