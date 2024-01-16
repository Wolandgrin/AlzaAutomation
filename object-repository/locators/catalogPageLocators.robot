*** Settings ***
Documentation   Catalog page locators

*** Variables ***
${FILTERING BY MOST EXPENSIVE}  id=ui-id-5
${SALE ITEM1}                   //*[@id="boxes"]/div[
${SALE ITEM2}                   ]/div[2]/div[1]/span
${CART ICON}                    //a[@data-testid='headerBasketIcon']
${BACK BUTTON}                  id=varBBackButton
${ITEM IN ROW}                  //span[@data-testid='finalPrice']