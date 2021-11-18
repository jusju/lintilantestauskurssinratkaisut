*** Settings ***
Library         Browser
Library         ../Libraries/TestLibrary.py
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot
Suite Setup      Open page to url    ${CALCULATOR_URL}
Suite Teardown   Close Browser

*** Test Cases ***
Verify title
   [Tags]     demo
   Click    //*[contains(@class, "fc-button-label") and text() = 'Consent']
   Click    id=Btn1
   Click    id=BtnPlus
   Click    id=Btn1
   Click    id=BtnCalc
   Sleep        1
   ${tulos}    Get Attribute   id=result        title      
   # Click   
   ${tulos}    Evaluate     1 + 1

*** Test Cases ***
Verify numerot
    [Tags]     calculate
    ${num1}       ${num2}      getFirstNumberPair   
    Click       id=Btn${num1}
    Click       id=BtnPlus
    Click       id=Btn${num2}
    Click       id=BtnCalc
    Sleep         2
    ${result}    Get Attribute     id=result      title
    ${fileresult}       getFirstResult
    # VERRATAAN TULOKSIA
    ${fileresult}       Evaluate     ${result}


template test for sums
    [Tags]      sum template
    [Template]    calc sums
    1     2
    2     3
    4     5


*** Keywords ***
calc sums
    New Page     ${CALCULATOR_URL}
    [Arguments]     ${arg1}    ${arg2}
    Evaluate     ${arg1} + ${arg2}

    










