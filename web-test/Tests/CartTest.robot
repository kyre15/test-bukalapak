*** Settings ***
Suite Setup              Setup and Open Browser
Suite Teardown           Close All Browsers
Test Setup               Delete All Cookies
Resource                 ../Resources.robot

*** Variables ***
${email}  venusiabee@live.com
${password}  Buka*lapak15
${item}  PS4
${productLink}  p/hobi-koleksi/video-game/aksesoris/8dkw12-jual-karet-silikon-analog-thumb-grip-stik-ps3-ps4-xbox

*** Test Cases ***
Add Item to Cart
    [Setup]  Login with Email  ${email}  ${password}
    Go To  https://www.${SERVER}/${productLink}
    ${choosedItemName}  ProductPage.Get Product Name
    ProductPage.Verify Masukkan Keranjang Button
    ProductPage.Click Masukkan Keranjang Button
    ProductPage.Verify Keranjang Belanja Popup
    ProductPage.Verify List Item on Keranjang Belanja  ${choosedItemName}
    ProductPage.Verify Lihat Keranjang Button
    ProductPage.Click Lihat Keranjang Button
    CartPage.Verify Item Added on Cart  ${choosedItemName}
    [Teardown]  CartLogic.Delete All Item





