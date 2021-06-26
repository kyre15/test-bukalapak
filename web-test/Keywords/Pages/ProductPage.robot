*** Keywords ***
Verify Specific Product Title
    [Arguments]  ${title}
    Wait Until Element Is Visible  //h1[contains(text(), "${title}")]  timeout=3

Verify Masukkan Keranjang Button
    Wait Until Element Is Visible  //button[text()[contains(., "Masukkan Keranjang")]]  timeout=3

Click Masukkan Keranjang Button
    Click Element  //button[text()[contains(., "Masukkan Keranjang")]]

Verify Keranjang Belanja Popup
    Wait Until Element Is Visible  //div[@class="c-dialog__panel__title"][contains(text(), "Keranjang Belanja")]  timeout=3

Verify List Item on Keranjang Belanja
    [Arguments]  ${item}
    Wait Until Element Is Visible  //div[@class="c-cart-dialog__item"]//a[contains(text(), "${item}")]  timeout=3

Verify Lihat Keranjang Button
    Wait Until Element Is Visible  //button[text()="Lihat Keranjang"]  timeout=3

Click Lihat Keranjang Button
    Click Element  //button[text()="Lihat Keranjang"]

Get Product Name
    ${productName}  Get Text  //div[@class="c-main-product__head"]//h1
    [Return]  ${productName}