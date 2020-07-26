*** Settings ***
Library    SeleniumLibrary    run_on_failure=Nothing
Library    String
Library    robot.Libraries.DateTime
Library    BuiltIn
Resource   ../Variables/LoginVariables.robot
Resource   ../Variables/CommonVariables.robot
Resource   ../Variables/ButikPageVariables.robot
Resource   ../Source/Test/CommonKeywords.robot
Library    ../Variables/SmokeKeywords.py


*** Keywords ***
Check Whether Images Are Uploaded Or Not
    tab image visibility control

Check Whether Woman Butik Images Are Uploaded Or Not
    ${Btns} =    get webelements    ${AllButikBtn}
    ${len} =    get length    ${Btns}

    Click Element    ${WomanButikBtn}

    Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds




Check Whether Man Butik Images Are Uploaded Or Not
    Click Element    ${MenButikBtn}

    Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether Child Butik Images Are Uploaded Or Not
    Click Element    ${ChildButikBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds



Check Whether HomeandLife Butik Images Are Uploaded Or Not
    Click Element    ${HomeandLifeBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether SuperMarket Butik Images Are Uploaded Or Not
    Click Element    ${SuperMarketBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether Cosmetic Butik Images Are Uploaded Or Not
    Click Element    ${CosmeticBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether ShoeandBag Butik Images Are Uploaded Or Not
    Click Element    ${ShoeandBagBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether ClockandAccessory Butik Images Are Uploaded Or Not
    Click Element    ${ClockandAccessoryBtn}
     Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Check Whether Electronic Butik Images Are Uploaded Or Not
    Click Element    ${ElectronicBtn}
    Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${BigCompList}


    Check Optical Visibility    ${SmallCompList}

    sleep    4seconds

Go To Any Butik
    Wait Until Element Is Visible    ${WomanButikBtn}    timeout=15
    Click Element    ${WomanButikBtn}
    Click Element    ${FirstWomanButik}
    Scroll Down Please

    Click Element    css= #topcontrol > div


    Check Optical Visibility    ${ButikProductList}


Go To Product's Detail
    Click Element    ${SelectedProduct}
    Wait Until Element Is Visible    ${AddBasketBtn}
    ${title} =    get text    ${ProductName}
    set global variable    ${title}
Add The Product To Basket
    Click Button    ${AddBasketBtn}

Go To Basket

    Click Element    ${BasketBtn}
    Wait Until Element Is Visible    ${ProdutTitleInBasket}    timeout=15

    ${title2} =    get text    ${ProdutTitleInBasket}
    should contain     ${title}    ${title2}