*** Settings ***
Library           AppiumLibrary
Resource          config.robot


*** Test Cases ***
Open Google Search and Verify
    Open Application    ${APPIUM_SERVER_URL}
    ...    platformName=Android
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appium:automationName=${AUTOMATION_NAME}

    Click Element    //android.widget.TextView[@content-desc="Chrome"]
    Wait Until Element Is Visible    com.android.chrome:id/search_box_text      timeout=10s
    Input Text      com.android.chrome:id/search_box_text      google
    Click Text    google
    Wait Until Element Is Visible    //*[contains(@text,"https://www.google.")]     timeout=10s
    Capture Page Screenshot
