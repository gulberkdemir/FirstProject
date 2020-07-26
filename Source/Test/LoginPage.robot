*** Settings ***
Library    SeleniumLibrary    run_on_failure=Nothing
Library    String
Library    robot.Libraries.DateTime
Library    BuiltIn
Resource   ../Variables/LoginVariables.robot
Library    ../Variables/SmokeKeywords.py

*** Keywords ***
Login Trendyol
    Wait Until Element Is Visible  ${FirstLoginButton}
    Click Element    ${FirstLoginButton}
    Wait Until Element Is Visible    ${Email}
    Input Text    ${Email}  ${EmailValue}
    Input Text    ${Password}    ${PasswordValue}
    Click Element    ${SecondLoginButton}
    Wait Until Element Is Visible   ${MyAccount}   timeout=15
    ${text} =    get text    ${MyAccount}
    Should Be Equal  ${text}  Hesabım   ignore_case=true

