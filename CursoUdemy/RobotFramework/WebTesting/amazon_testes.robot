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
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista
    Acessar a home page do site Amazon.com.br 
    Digitar o nome de produto "Echo Dot" no campo de pesquisa
    Clicar no botão de pesquisa
    Listar o resultado da pesquisa se está listando o produto "Echo Dot"




    # Para executar um teste distinto deve-se utilizar este exemplo:
    # robot -t "Caso de Teste 02 - Pesquisa de um Produto" amazon_testes.robot