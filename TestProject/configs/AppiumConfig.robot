*** Settings ***
Library    AppiumLibrary

*** Variables ***

${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${DEVICE_NAME}                emulator-5554
${APP_PACKAGE}               com.swaglabsmobileapp
${APP_ACTIVITY}             com.swaglabsmobileapp.MainActivity
${APPIUM_SERVER}             http://127.0.0.1:4723
