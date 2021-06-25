*** Settings ***
Suite Setup              Setup and Open Browser
Suite Teardown           Close All Browsers
Test Setup               Delete All Cookies
Resource                 ../Resources.robot

*** Variables ***
${email}  reky.rolen@outlook.com

*** Test Cases ***
Fill Register Form on Bukalapak
    Homepage.Verify Daftar Button
    Homepage.Click Daftar Button
    RegisterPage.Verify Title Register Page
    RegisterPage.Verify Phone Number or Email Field
    RegisterPage.Input Email  ${email}
    RegisterPage.Verify Button Daftar
    RegisterPage.Click Button Daftar
    RegisterPage.Verify Title Verification Popup
    RegisterPage.Verify Subtitle Verification Popup
    RegisterPage.Verify Correct Email for Subtitle Verification  ${email}
    RegisterPage.Verify Button Send Code
    RegisterPage.Click Button Send Code
    RegisterPage.Verify Subtitle Verification Code
    RegisterPage.Verify Email for Verification Code  ${email}
    RegisterPage.Verify Secret Code Field
    RegisterPage.Input Secret Code  1234
    RegisterPage.Verify Verification Button
    # RegisterPage.Click Verification Button