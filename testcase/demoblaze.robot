*** Settings ***
Library    SeleniumLibrary
Resource   browserstack.robot

*** Test Cases ***

Sign Up Test
    Open BrowserStack Session    ${browser}
    Wait Until Element Is Visible    id:signin2    10s
    Execute JavaScript    document.getElementById('signin2').click()
    Wait Until Element Is Visible    id:signInModal    10s
    Input Text    id:sign-username    bekzat
    Input Text    id:sign-password    123456
    Click Button    xpath://div[@id='signInModal']//button[text()='Sign up']
    Handle Alert    accept
    Close Browser

Log In Test
    Open BrowserStack Session    ${browser}
    Wait Until Element Is Visible    id:login2    10s
    Execute JavaScript    document.getElementById('login2').click()
    Wait Until Element Is Visible    id:logInModal    10s
    Input Text    id:loginusername    bekzat
    Input Text    id:loginpassword    123456
    Click Button    xpath://div[@id='logInModal']//button[text()='Log in']
    Sleep    3s
    Close Browser
