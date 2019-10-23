*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NORMAL URL}    https://www.google.co.th
${BROWSER}    Chrome
${DELAY}    0
${URL}    www.cs.kku.ac.th

*** Test Case ***
Go to homepage
	Open Browser    ${NORMAL URL}    ${BROWSER}
	Input Text    q    ${URL}
	Submit Form
	Wait Until Page Contains    CS KKU
	Close Browser