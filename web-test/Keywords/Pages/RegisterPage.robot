*** Keywords ***
Verify Title Register Page
    Wait Until Element Is Visible  //p[contains(text(),'Daftar dulu, yuk')]  timeout=3

Verify Phone Number or Email Field
    Wait Until Element Is Visible  //*[contains(text(),'Nomor handphone atau email')]  timeout=3

Input Email
    [Arguments]  ${email}
    Input Text  css=.bl-text-field__input  ${email}

Verify Button Daftar
    Wait Until Element Is Visible  //span[contains(text(),'Daftar')]  timeout=3

Click Button Daftar
    Click Element  //span[contains(text(),'Daftar')]

Verify Title Verification Popup
    Wait Until Element Is Visible  //p[contains(text(),'Verifikasi Pendaftaran')]  timeout=3

Verify Subtitle Verification Popup
    Wait Until Element Is Visible  //p[contains(text(), "Email kamu sudah benar?")]  timeout=3

Verify Correct Email for Subtitle Verification
    [Arguments]  ${email}
    # Wait Until Element Is Visible  //p[text()[contains(., "Kode Rahasia akan dikirimkan ke")]]//strong[text()="${email}"]//[text()[contains(., " untuk proses verifikasi.")]]  timeout=3
    Wait Until Element Is Visible  //strong[text()="${email}"]  timeout=3

Verify Button Send Code
    Wait Until Element Is Visible  //button/span[contains(text(),"Ya, kirim kode")]  timeout=3

Click Button Send Code
    Click Element  //button/span[contains(text(),"Ya, kirim kode")]

Verify Button Change Email
    Wait Until Element Is Visible  //*[contains(text(),"Bukan, ganti email")]  timeout=3

Click Button Change Email
    Click Element  //*[contains(text(),"Bukan, ganti email")]

Verify Subtitle Verification Code
    Wait Until Element Is Visible  //p[text()="Masukkan Kode Rahasia yang diterima via email di:"]  timeout=3

Verify Email for Verification Code
    [Arguments]  ${email}
    Wait Until Element Is Visible  //p[text()="${email}"]  timeout=3

Verify Secret Code Field
    Wait Until Element Is Visible  //label[text()="Kode rahasia"]//preceding-sibling::input[@class="bl-text-field__input"]  timeout=3

Input Secret Code
    [Arguments]  ${code}
    Input Text  //label[text()="Kode rahasia"]//preceding-sibling::input[@class="bl-text-field__input"]  ${code}

Verify Verification Button
    Wait Until Element Is Visible  //Button//span[text()="Verifikasi"]  timeout=3

Click Verification Button
    Click Element  //Button//span[text()="Verifikasi"] 

# css=.header-login__more .bento

# Select Language Without Login
#     [Arguments]                         ${language}
#     General.Click Header Login More
#     HomePage.Click More Menu             Bahasa
#     Click Element                        css=.option__link:contains("${language}")