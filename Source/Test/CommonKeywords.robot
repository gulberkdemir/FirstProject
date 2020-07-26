*** Settings ***
Library    SeleniumLibrary    run_on_failure=Nothing
Library    String
Library    robot.Libraries.DateTime
Library    BuiltIn
Resource   ../Variables/CommonVariables.robot
Resource   ../Variables/LoginVariables.robot
Resource   ../Variables/ButikPageVariables.robot
Resource    ../Source/Test/ButikPage.robot
Library    ../Variables/SmokeKeywords.py


*** Keywords ***

Launch Browser
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    wait until element is visible    ${FirstPopUp}
    Click Element    ${WomanCollection}


Check Optical Visibility
    [Arguments]    ${Images}


    ${AllImages} =  get webelements    ${Images}
    ${LengthImg} =    get length   ${AllImages}

    FOR    ${j}   IN RANGE    0      ${LengthImg}
        ${imgvisibility}=    Run Keyword And Return Status    Element Should Be Visible    ${AllImages[${j}]}   timeout=5
        Run Keyword If    ${imgvisibility}    Log To Console  "Image could load"
        ...    ELSE    Log To Console    "Image could not load"
    END

    