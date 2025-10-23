*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Sign Up Test
    Open Browser    https://www.demoblaze.com    chrome
    Wait Until Element Is Visible    id:signin2    10s
    Click Element    id:signin2
    Wait Until Element Is Visible    id:signInModal    10s
    Input Text    id:sign-username    bekzat
    Input Text    id:sign-password    123456
    Click Button    xpath://button[text()='Sign up']
    Handle Alert    accept
    Close Browser

Log In Test
    Open Browser    https://www.demoblaze.com    chrome
    Wait Until Element Is Visible    id:login2    10s
    Click Element    id:login2
    Wait Until Element Is Visible    id:logInModal    10s
    Input Text    id:loginusername    bekzat
    Input Text    id:loginpassword    123456
    Click Button    xpath://button[text()='Log in']
    Sleep    3s
    Close Browser

Log Out Test
    Open Browser    https://www.demoblaze.com    chrome
    Wait Until Element Is Visible    id:login2    10s
    Click Element    id:login2
    Wait Until Element Is Visible    id:logInModal    10s
    Input Text    id:loginusername    bekzat
    Input Text    id:loginpassword    123456
    Click Button    xpath://button[text()='Log in']

    Wait Until Element Is Visible    id:logout2    10s
    Sleep    1
    Click Element    id:logout2
    Close Browser

Buy Product Test
    Open Browser    https://www.demoblaze.com    chrome
    Wait Until Element Is Visible    id:login2    10s
    Click Element    id:login2
    Wait Until Element Is Visible    id:logInModal    10s
    Input Text    id:loginusername    bekzat
    Input Text    id:loginpassword    123456
    Click Button    xpath://button[text()='Log in']

    Wait Until Element Is Not Visible    id:logInModal    10s
    Wait Until Element Is Visible    xpath://a[text()='Samsung galaxy s6']
    Click Element    xpath://a[text()='Samsung galaxy s6']
    sleep     2
    Wait Until Element Is Visible    xpath://a[text()='Add to cart']    15s
    Click Element    xpath://a[text()='Add to cart']
    Sleep    2
    Handle Alert    accept
    Click Element    id:cartur
    Sleep    3
    Wait Until Page Contains Element    xpath://td[contains(text(),'Samsung galaxy s6')]    10s



