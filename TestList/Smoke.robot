*** Variables ***


*** Settings ***
Resource    ../Source/Test/CommonKeywords.robot
Resource    ../Source/Test/LoginPage.robot
Resource    ../Source/Test/ButikPage.robot




*** Test Cases ***
Launch Browser
    Launch Browser
Login Trendyol
    Login Trendyol
Butik Page Controls
    Check Whether Images Are Uploaded Or Not
    Check Whether Woman Butik Images Are Uploaded Or Not
    Check Whether Man Butik Images Are Uploaded Or Not
    Check Whether Child Butik Images Are Uploaded Or Not
    Check Whether HomeandLife Butik Images Are Uploaded Or Not
    Check Whether SuperMarket Butik Images Are Uploaded Or Not
    Check Whether Cosmetic Butik Images Are Uploaded Or Not
    Check Whether ShoeandBag Butik Images Are Uploaded Or Not
    Check Whether ClockandAccessory Butik Images Are Uploaded Or Not
    Check Whether Electronic Butik Images Are Uploaded Or Not
    Go To Any Butik
    Go To Product's Detail
    Add The Product To Basket
    Go To Basket




