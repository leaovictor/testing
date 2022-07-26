*** Settings ***
Library                             SeleniumLibrary
# Library                             AutoRecorder

*** Variables ***
${URL}                              https://www.amazon.com.br/
${MENU_ELETRONICOS}                 //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${LINK_PCINFO}                      //img[@src='https://images-na.ssl-images-amazon.com/images/G/32/BR-hq/2021/img/Consumer_Electronics/Storefronts/Electronics/956.Storefront_categoria_computadores_icons_240x270.jpg']
${EXCLUIR}                          CSS=span.a-size-small:nth-child(3) > span:nth-child(1)


*** Keywords ***

Abrir o navegador
    Open Browser                                 browser=ff
    Maximize Browser Window

Fechar o navegador   
    Capture Page Screenshot  
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To                            ${URL}
    Wait Until Element Is Visible                ${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Wait Until Element Is Visible                ${MENU_ELETRONICOS}
    Click Element                                ${MENU_ELETRONICOS}
    
Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains                     ${FRASE}  

Verificar se o título da página fica "${TITULO}"
    Title Should Be                              ${TITULO}

Verificar se aparece a categoria "${FRASE}"
    Page Should Contain                          ${FRASE}
    Page Should Contain Element                  ${LINK_PCINFO}

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text  twotabsearchtextbox              ${PRODUTO}

Clicar no botão de pesquisa
    Click Element    nav-search-submit-button
 
Listar o resultado da pesquisa se está listando o produto ${PRODUTO}
    Wait Until Element Is Visible    //img[@alt='Echo Dot (3ª Geração): Smart Speaker com Alexa - Cor Preta']

Digitar o nome do livro "${LIVRO}" no campo de pesquisas
    Input Text  twotabsearchtextbox              ${LIVRO}

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
     Wait Until Element Is Visible    //img[@alt='Kindle 10a. geração com bateria de longa duração - Cor Preta']

Adicionar o produto "Kindle" no carrinho
    Click Element  //img[@alt='Kindle 10a. geração com bateria de longa duração - Cor Preta']
    Wait Until Element Is Visible  //input[@title='Adicionar ao carrinho']
    Click Element  //input[@title='Adicionar ao carrinho']

Verificar se o produto "Kindle" foi adicionado com sucesso
    Sleep  1
    Page Should Contain  Adicionado ao carrinho

Remover o produto "Kindle" do carrinho
    Click Element    //a[contains(.,'Ir para o carrinho')]
    Click Element    ${EXCLUIR}

Verificar se o carrinho fica vazio
    Sleep  3
    Wait Until Element Is Visible    //h1[contains(.,'Seu carrinho de compras da Amazon está vazio.')]
    Page Should Contain              Seu carrinho de compras da Amazon está vazio
    



#GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Echo Dot"
    Digitar o nome de produto "Echo Dot" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Echo Dot"
    Page Should Contain           Amazon.com.br : Echo Dot

E um produto da linha "Echo Dot" deve ser mostrado na página
    Listar o resultado da pesquisa se está listando o produto "Echo Dot"