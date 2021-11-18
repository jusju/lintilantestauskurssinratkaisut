"# lintilantestauskurssi" 

Luennot 8.11.2021

- Testaaja ei saisi olla erillinen henkilö tai osasto kuten ennen
- Vapaa virheiden etsiminen on myös mahdollista

- devops voi olla eri asioita, putki tai projektimuoto riippuen henkilöstä
- koodaus, testaus, laadunvarmistus

- rooleja: manuaalitestaaja, testiautomaatio kehittäjä, suorituskykytestaaja ja manageri

DEVOPS

- Ulkopuolinen leimasin vie turhaa aikaa, nykyään pyritään välttämään
- Kattava testiautomaatio on edellytys nopealle julkaisu- ja kehityssyksille

- AUTOMAATTINEN TESTAUS
    -> Nopea palaute kohdasta, joka ei toimi

- TDD testaanko testit ensin ei välttämä ole aina hyvä tapa
- TDD:ssä on vaikea määrittää etukäteen kaikki nettisivun ID:t
- TDD ei välttämättä ole hyvä testiautomaation kanssa

TESTAAMISEN JOHTAMINEN
Tutkiva testaus
Automatisoitu hyväksymistestaus
Integraatiotestaus
Yksikkötestaus

Terveellinen testauspyramidi.

Miten testiautomaatio tulisi rakentaa?

- Uusi muutos palveluun -> Testiympäristö muutokselle -> Ajetaan testit -> Joko julkaistaan
tai näytetään punaista valoa

- Tuotantodataa vastaan ei välttämättä pysty GDPR:n käyttämään testeissä. Henkilötietojen
maskaus voidaan tehdä
   - maskaus on omaa käsityötä

- Testidata pitää suunnitella kyseiseen caseen

- Uikuta kehittäjille, että tarvitsen testidataa ja kun tarpeeksi kauan valittaa niin saa
ne kehittäjiltä

- Olemattomia henkilötunnuksia voi generoida automaattisesti
- Mikä on smoke test - eli smoke test tarkoittaa, että onko palvelu pystyssä vai ei? Hyvin perus
- Kriittisimpiin asioihin testit, esimerkiksi nettikauppa, kuinka ostat tuotteen?

BUSINESS IHMISILLE LUETTAVIA RAPORTTEJA SAA ROBOT:STA

Keywordit on yritetty tehdä lähelle ihmiskieltä

Testin kuvaus "Test Cases" -> Avainsanat ja mut muuttujat "Test Resources" -> Funktiot "Libraries"
-> Testattava tuote 

- Playwright on vaihtoehto Seleniumille
- cypress on unit-testeille ja UI testeille

- ROBOT ON LÄHINNÄ AINOA PLATFORM JOSTA SAA SELKOKIELISEN RAPORTIN
- Seleniumille on kiva nauhoitusväline, on Robotille nauhoittimia ? Robotille ei ole nauhoittimia

# robotilla screenshot näytön tilasta lopuksi

- Chromella on Robot lisäpalikka, joka kerää näytön syötteet, robot corner

- Browser kirjasto ja screenshotit















































