*** Settings ***
Documentation        Essa suite testa o site a Amazon.com.br
...                  e seus componentes
Resource             ./amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              e verifica a categoria Computadores e Informática
    [Tags]           menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Echo Dot"
    Então o título da página deve ficar "Amazon.com.br : Echo Dot"
    E um produto da linha "Echo Dot" deve ser mostrado na página




    # Para executar um teste distinto deve-se utilizar este exemplo:
    # robot -t "Caso de Teste 02 - Pesquisa de um Produto" amazon_testes.robot