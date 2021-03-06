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

Verify Title Daftar dulu
    Wait Until Element Is Visible  //p[text()="Daftar dulu, yuk"] timeout=3

Verify Subtitle Daftar dulu
    Wait Until Element Is Visible  //p[text()="Isi nama dan password"] timeout=3

Verify Nama lengkap Field
    Wait Until Element Is Visible  //label[text()="Nama lengkap"]//preceding-sibling::input[@class="bl-text-field__input"]  timeout=3

Input Nama lengkap
    [Arguments]  ${name}
    Input Text  //label[text()="Nama lengkap"]//preceding-sibling::input[@class="bl-text-field__input"]  ${name}

Verify Password Field
    Wait Until Element Is Visible  //label[text()="Password"]//preceding-sibling::input[@class="bl-text-field__input"]  timeout=3

Input Password
    [Arguments]  ${password}
    Input Text  //label[text()="Password"]//preceding-sibling::input[@class="bl-text-field__input"]  ${password}

Verify Simpan Button
    Wait Until Element Is Visible  //button//span[text()="Simpan"]  timeout=3

Click Simpan Button
    Click Element  //button//span[text()="Simpan"]

Verify Title Success Register
    Wait Until Element Is Visible  //p[text()="Akun kamu berhasil dibuat!"]  timeout=3

Verify Subtitle Success Register
    Wait Until Elemnet Is Visible  //p[text()="Sekarang kamu bisa bebas belanja semua kebutuhan di Bukalapak."]  timeout=3

Verify Mulai Belanja Button
    Wait Until Element Is Visible  //button//span[test()="Mulai belanja"]  timeout=3

Click Mulai Belanja Button
    Click Element  //button//span[test()="Mulai belanja"]

# css=.header-login__more .bento

# Select Language Without Login
#     [Arguments]                         ${language}
#     General.Click Header Login More
#     HomePage.Click More Menu             Bahasa
#     Click Element                        css=.option__link:contains("${language}")