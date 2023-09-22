*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dados que eu acesse o Organo
Test Teardown    Fechar navegador

*** Test Cases ***
Verificar se ao preencher os campos do formuláriocorretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Dado que eu preencha os campos do formulário corretamente
    E clique no botão criar card
    Então identificar o card no time esperado

Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário corretamente
    E clique no botão criar card
    Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    # Na verdade esse primeiro frase não é necessário
    Dado que eu preencha os campos do formulário corretamente 
    Então criar e identificar 1 card em cada time disponível
