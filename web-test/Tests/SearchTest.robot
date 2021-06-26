*** Settings ***
Suite Setup              Setup and Open Browser
Suite Teardown           Close All Browsers
Test Setup               Delete All Cookies
Resource                 ../Resources.robot

*** Variables ***
${item}  PS4

*** Test Cases ***
Search Product
    HomePage.Verify Search Field
    HomePage.Input Search Item  ${item}
    HomePage.Verify Search Button
    HomePage.Click Search Button
    ${choosedItemName}  SearchLogic.Choose Item Search Result Randomly  ${item}
    ProductPage.Verify Specific Product Title  ${choosedItemName}