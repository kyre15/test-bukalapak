*** Settings ***
Suite Setup              Setup and Open Browser
Suite Teardown           Close All Browsers
Test Setup               Delete All Cookies
Resource                 ../Resources.robot

*** Variables ***
${email}  venusiabee@live.com
${password}  Buka*lapak15
${name}  venusiabee

*** Test Cases ***
Login to Bukalapak Using Email
    HomePage.Verify Login Button
    HomePage.Click Login Button
    LoginPage.Verify Title Login Page
    LoginPage.Verify Email Field
    LoginPage.Input Email Field  ${email}
    LoginPage.Verify Password Field
    LoginPage.Input Password Field  ${password}
    LoginPage.Verify Login Button
    LoginPage.Click Login Button
    HomePage.Verify My Lapak Button
    HomePage.Click My Lapak Button
    HomePage.Verify Account Name  ${name}