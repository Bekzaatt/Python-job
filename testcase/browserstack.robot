*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSERSTACK_USERNAME}    bekzatzhumalyuly_BMw6N4
${BROWSERSTACK_ACCESS_KEY}  zq1EMFMt1CaGuesvKk94
${REMOTE_URL}    https://bekzatzhumalyuly_BMw6N4:zq1EMFMt1CaGuesvKk94@hub.browserstack.com/wd/hub

*** Keywords ***
Open BrowserStack Session
    [Arguments]    ${browser}
    ${REMOTE_URL}=    Set Variable    https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub

    &{CAPABILITIES}=    Create Dictionary
    ...    browserName=${browser}
    ...    browserVersion=latest
    ...    os=Windows
    ...    os_version=11
    ...    name=Demoblaze Test - ${browser}
    ...    build=Robot Framework Tests
    ...    browserstack.user=${BROWSERSTACK_USERNAME}
    ...    browserstack.key=${BROWSERSTACK_ACCESS_KEY}

    Open Browser
    ...    url=https://www.demoblaze.com
    ...    browser=${browser}
    ...    remote_url=${REMOTE_URL}
    ...    desired_capabilities=&{CAPABILITIES}