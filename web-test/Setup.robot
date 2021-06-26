*** Keywords ***
Setup and Open Browser
    Setup Chromedriver
    Open Browser  https://www.${SERVER}  gc

Login with Email
    [Arguments]  ${email}  ${password}
    Go To  https://accounts.${SERVER}/login
    LoginPage.Verify Title Login Page
    LoginPage.Verify Email Field
    LoginPage.Input Email Field  ${email}
    LoginPage.Verify Password Field
    LoginPage.Input Password Field  ${password}
    LoginPage.Verify Login Button
    LoginPage.Click Login Button
    Sleep  2