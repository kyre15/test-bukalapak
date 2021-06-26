*** Keywords ***

Verify Title Login Page
    Wait Until Element Is Visible  //span[text()="Silakan masuk ke dalam akun kamu"]  timeout=3

Verify Email Field
    Wait Until Element Is Visible  id=user_session_username  timeout=3

Input Email Field
    [Arguments]  ${email}
    Input Text  id=user_session_username  ${email}

Verify Password Field
    Wait Until Element Is Visible  id=user_session_password  timeout=3

Input Password Field
    [Arguments]  ${password}
    Input Text  id=user_session_password  ${password}

Verify Login Button
    Wait Until ELement Is Visible  //button[text()="Login"]  timeout=3

Click Login Button
    Click Element  //button[text()="Login"]