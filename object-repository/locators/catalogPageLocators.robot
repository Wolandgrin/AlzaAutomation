*** Settings ***
Documentation   Catalog page locators

*** Variables ***
${FILTERING BY MOST EXPENSIVE}  id=ui-id-5
${SALE ITEM1}                   //*[@id="boxes"]/div[
${SALE ITEM2}                   ]/div[2]/div[1]/span/div/div/a
${CART ICON}                    //*[@id="page"]/div[1]/div/div/div[1]/div/header/div[4]/a/span
${BACK BUTTON}                  id=varBBackButton
${ITEM IN ROW}                  //span[@data-testid='finalPrice']
${FIRST ITEM IN ROW}            //span[@data-testid='finalPrice']
${SECOND ITEM IN ROW}           //span[@data-testid='priceCompareContainer']

