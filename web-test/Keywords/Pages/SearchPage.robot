*** Keywords ***

Verify Item Search Result
    [Arguments]  ${item}
    Wait Until Element Is Visible  //div[contains(@class, "te-product-card")]//a[contains(text(), "${item}")]

Click Item Search Result
    Click Element  //div[contains(@class, "te-product-card")]

Get Item Search Result Count
    ${itemCount}  Get Element Count  //div[contains(@class, "te-product-card")]
    [Return]  ${itemCount}

Click Item Search Result By index
    [Arguments]  ${index}
    Click Element  //div[contains(@class, "bl-flex-item")][${index}]//div[contains(@class, "te-product-card")]

Get Item Title
    [Arguments]   ${index}
    ${itemTitle}  Get Text  //div[contains(@class, "bl-flex-item")][${index}]//div[contains(@class, "te-product-card")]//div[@class="bl-product-card__description-name"]//a
    [Return]  ${itemTitle}