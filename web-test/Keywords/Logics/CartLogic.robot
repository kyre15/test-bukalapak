*** Keywords ***

Delete All Item
  ${status}  ${value}=  Run Keyword and Ignore Error  CartPage.Verify Delete Item Button
  Run Keyword If  '${status}'=='FAIL'  Run Keywords
  ...  CartPage.Verify Cart Checkbox Select All Item  AND
  ...  CartPage.Click Cart Checkbox Select All Item  AND
  ...  Repeat Keyword  10  CartPage.Click Delete Selected 
  
Delete Item
  CartPage.Click Cart Checkbox Select All Item
  CartPage.Click Delete Selected 