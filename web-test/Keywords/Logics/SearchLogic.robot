*** Keywords ***
Choose Item Search Result Randomly
    [Arguments]  ${item}
    SearchPage.Verify Item Search Result  ${item}
    ${index}=  Evaluate  random.randint(1,50)     modules=random
    ${itemName}  SearchPage.Get Item Title  ${index}
    SearchPage.Click Item Search Result By index  ${index}
    [Return]  ${itemName}
