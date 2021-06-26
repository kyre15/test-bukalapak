*** Keywords ***

Verify Item Added on Cart
    [Arguments]  ${item}
    Wait Until Element Is Visible  //span[text()[contains(., "${item}")]]  timeout=3

Verify Cart Checkbox Select All Item
    Wait Until Element Is Visible  //label[@class="bl-checkbox qa-bulk-checkbox"]  timeout=3

Click Cart Checkbox Select All Item
    Click Element  //label[@class="bl-checkbox qa-bulk-checkbox"]

Verify Delete Item Button
    Wait Until Element Is Visible  //span[@class="bl-link is-contrast"][contains(text(), "Hapus")]  timeout=3

Click Delete Item Button
    Click Element  //span[@class="bl-link is-contrast"][contains(text(), "Hapus")]

Click Delete Selected Item
    Click Element  //div[contains(@class, "bl-card--outlined")][2]//span[contains(text(), "Hapus")]

Verify Cart Empty State
    Wait Until Element Is Visible  //div[contains(text(), "barang impian?")]  timeout=3
    Wait Until ELement Is Visible  //p[contains(text(), "Yuk, tambahin ke keranjang dan bikin jadi milik kamu sekarang!")]  timeout=3