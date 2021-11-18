*** Settings ***
Library         Browser
Resource        ../Variables/CommonVariables.robot
Resource        ../Keywords/CommonKeywords.robot


*** Test Cases ***
#Käyttäjä löytää haulla kurssin ja pääsee tunnistautumis sivulle
user tries to register for course
    [Tags]    haku
    open page to url   ${URL}
    Click     id=quick-search-dropdown
    Type Text    id=quick-search      tietojenkäsittely avoin amk
    #Sleep    10
    Click    //*[contains(@value, "Etsi")]
    Click     //*[contains(text(), "Tietojenkäsittely, avoin amk")]    force=True
    Click    //a[contains(text(), "Ilmoittautuminen")]
    Click    //*[contains(text(), "Uusien opiskelijoiden ilmoittautumislomakkeet")]
    Click    //a[contains(text(), "/lomakkeet/479")]
    ${idarvo}    get Text    id=displayName
    Should Be Equal As Strings    Haaga-Helia E-lomake    ${idarvo}

user searches for a course
    
    

#https://e-lomake.haaga-helia.fi/lomakkeet/479/lomake.html

    # Get Text @nameTietojenkäsittely
    #${SIGN_IN_BUTTON}     //*contains(@name, quick-search-dropdown)
