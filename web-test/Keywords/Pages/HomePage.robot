***Keywords***

Verify Daftar Button
    Wait Until Element Is Visible  //p[contains(text(),'Daftar')]  timeout=3

Click Daftar Button
    Click Element  //p[contains(text(),'Daftar')]

Verify My Lapak Button
    Wait Until Element Is Visible  //div[@class="bl-avatar sigil-avatar"]  timeout=3

Click My Lapak Button
    Click Element  //div[@class="bl-avatar sigil-avatar"]

Verify Account Name
    [Arguments]  ${name}
    Wait Until Element Is Visible  //div[2]/p/a[contains(text(), "${name}")]

Verify Login Button
    Wait Until Element Is Visible  //p[text()="Login"]  timeout=3

Click Login Button
    Click Element  //p[text()="Login"]
