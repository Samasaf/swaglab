*** Settings ***
Library     JSONLibrary

*** Variables ***

${USERNAME_LOCATOR}        //android.widget.EditText[@content-desc="test-Username"]
${PASSWORD_LOCATOR}        //android.widget.EditText[@content-desc="test-Password"]
${LOGIN_LOCATOR}          //android.view.ViewGroup[@content-desc="test-LOGIN"]
${ERROR_INPUT}            //android.widget.TextView[@text="Username and password do not match any user in this service."]
${menu_List}              //android.view.ViewGroup[@content-desc="test-Menu"]/android.view.ViewGroup/android.widget.ImageView
${LOG_OUT}                //android.widget.TextView[@content-desc="test-Price" and @text="$9.99"]
