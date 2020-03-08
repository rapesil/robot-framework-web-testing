*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${BROWSER}  chrome
${URL}      https://the-internet.herokuapp.com/login

*** Keywords ***

Acessar a página de autenticação
    Open Browser  ${URL}  ${BROWSER}

Informar credenciais válidas: ${USUARIO} e ${SENHA}
    Input Text  id=username  ${USUARIO}
    Input Text  id=password  ${SENHA}

Clicar em Submit
    Click Element  css=#login > button > i

Verificar se o login foi feito com sucesso
    Element Should Contain  id=flash  You logged into a secure area!

Fechar browser
    Close Browser
            