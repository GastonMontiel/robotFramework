*** Settings ***
Documentation    This is test script
Library  SeleniumLibrary  run_on_failure=Nothing



*** Variables ***



*** Test Cases ***
 Test file Site
    [Documentation]  Test1- Open antel in browser
    [Tags]  Smoke
    Open Browser  https://configuraciones.antel.com.uy/  chrome
    Click Link  css:a[href="/marca/Apple"]
    Click Element  css:a[href="/marca/Apple/modelo/iPhone+13+Pro+Max+%28256GB%29"]
    Click Element  css:div#celda5
    Click Element  css:li[id="Configura+Internet+%28Prepago%29."]


    WHILE    True    limit=4
        IF    Element Should Be Enabled  css:button#btn_siguiente    Execute JavaScript  console.log(${x});

    END


${Status}=     Run Keyword And Return Status    Element Should be Enabled    id=dropdown
Run Keyword If    '${Status}'=='True'      Click Element    id=dropdown
*** Keywords ***