*** Settings ***
Resource     configs/Variables.robot
Resource     configs/Keywords.robot
Resource     Pages/LoginPage.robot
Resource     Pages/AddItems.robot

Library    AppiumLibrary
Library  JSONLibrary

*** Test Cases ***

# RIGHT LOGIN
Success login with DDT
    Open Test Application
    ${json_data} =  Load Json From File  ${JSON_FILE}

    ${user1} =  Get Value From Json  ${json_data}  user1.username
    ${pass1} =  Get Value From Json  ${json_data}  user1.password
    preform  ${user1}  ${pass1}
    Preform logout


    ${user2} =  Get Value From Json  ${json_data}  user2.username
    ${pass2} =  Get Value From Json  ${json_data}  user2.password
    Preform   ${user2}  ${pass2}
   Sleep    5s


    ${user3} =  Get Value From Json  ${json_data}  user3.username
    ${pass3} =  Get Value From Json  ${json_data}  user3.password
    preform  ${user3}  ${pass3}
    Preform logout






#WRONG INPUT
Unsuccess login
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}
    Input Text    ${USERNAME_LOCATOR}    ${WRONG_USERNAME} 
    Wait Until Element Is Visible    ${PASSWORD_LOCATOR}
    Input Text    ${PASSWORD_LOCATOR}    ${WRONG_PASSWORD}   
    Click Element    ${LOGIN_LOCATOR}
    Wait Until Element Is Visible    ${ERROR_INPUT}
    Close Application



Success login
    Open Test Application
    Wait Until Element Is Visible    ${ITEM1}    15 seconds
    Click Element    ${ITEM1}
    Sleep    2
    Wait Until Element Is Visible    ${ITEM2}    15 seconds
    Click Element    ${ITEM2}
    Sleep    2
     FOR    ${repeat}    IN RANGE    2
    Swipe    ${46}    ${1754}    ${52}    ${727}
    END
    Wait Until Element Is Visible    ${ITEM3}    15 seconds
    Click Element    ${ITEM3}
    Sleep    2
    Wait Until Element Is Visible   ${CART}      15 seconds
    Click Element    ${CART}
    Sleep    2
    FOR    ${repeat}    IN RANGE    1
    Swipe    500    1500    500    500    1000
    END
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING}      10 seconds
    Click Element    ${CONTINUE_SHOPPING}
    FOR    ${repeat}    IN RANGE    1
     Swipe    ${26}    ${1161}    ${41}    ${1697}
    END
    Wait Until Element Is Visible    ${ITEM4}    10 seconds
    Click Element    ${ITEM4}
    Sleep    2
    Wait Until Element Is Visible   ${CART}      15 seconds
    Click Element    ${CART}
    Sleep    2
    FOR    ${repeat}    IN RANGE    1
    Swipe    ${72}    ${2342}    ${72}    ${738}
    END
    Wait Until Element Is Visible    ${CHECKOUT}
    Click Element    ${CHECKOUT}
    Wait Until Element Is Visible        ${FIRSTNAME}     
    Input Text        ${FIRSTNAME}       ${FIRST_NAME_CHECKOUT}
    Input Text        ${LASTNAME}        ${LAST_NAME_CHECKOUT}
    Input Text        ${ZCODE}        ${CODE}
    Click Element    ${CONTINUE}
    Sleep    2
    Swip Action
    Wait Until Element Is Visible        ${FINISH}
    Click Element        ${FINISH}
    Sleep    2 
    Wait Until Element Is Visible    ${TEXT_MSG}
    Click Element        ${TEXT_MSG}
    Close Application



    





