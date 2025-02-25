*** Settings ***
Resource    configs/AppiumConfig.robot
Resource    Pages/LoginPage.robot
Resource    configs/Variables.robot


*** Keywords ***

Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Swip Action
    FOR    ${repeat}    IN RANGE    1
    Swipe    ${72}    ${2342}    ${72}    ${738}
    END

Load Login Data
    ${json_data}=    Load JSON From File    configs/test_data.json
    ${users}=    Get Value From JSON    ${json_data}    $[*]
 Set Test Variable    ${login_data}    ${users}




preform
      [Arguments]    ${username}    ${password}
     Open Test Application
     Wait Until Element Is Visible    ${USERNAME_LOCATOR}
     Input Text       ${USERNAME_LOCATOR}     ${username}
     Wait Until Element Is Visible    ${PASSWORD_LOCATOR}
     Input Text       ${PASSWORD_LOCATOR}     ${password}
     Wait Until Element Is Visible    ${LOGIN_LOCATOR}
     Click Element    ${LOGIN_LOCATOR}
     Sleep    5s
     

Preform logout
    Wait Until Element Is Visible    ${menu_List}
    Click Element    ${menu_List}
    Wait Until Element Is Visible    ${LOG_OUT}
    Click Element    ${LOG_OUT}
    Sleep    5s


logIn
     Open Test Application
     Load Login Data
     Wait Until Element Is Visible    ${USERNAME_LOCATOR}
     Input Text       ${USERNAME_LOCATOR}    ${USERNAME_LOGIN}
     Wait Until Element Is Visible    ${PASSWORD_LOCATOR}
     Input Text       ${PASSWORD_LOCATOR}    ${PASSWORD_LOGIN}
     Wait Until Element Is Visible    ${LOGIN_LOCATOR}
     Click Element    ${LOGIN_LOCATOR}
    
    
    
    
    
    




