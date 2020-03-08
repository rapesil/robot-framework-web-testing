*** Settings ***

RESOURCE        ../resources/Resource.robot
Test Teardown   Fechar browser

*** Test Case ***

Test Case 001: Validar autenticação com sucesso
    Acessar a página de autenticação
    Informar credenciais válidas: tomsmith e SuperSecretPassword!
    Clicar em Submit
    Verificar se o login foi feito com sucesso