*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dados que eu acesse o Organo
Test Teardown    Fechar navegador

*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido corretamento o sistema exibe uma mensagem de campo obrigatório
    Dado que eu clique no botão criar card
    Então sistema deve apresentar mensagem de campo obrigatório