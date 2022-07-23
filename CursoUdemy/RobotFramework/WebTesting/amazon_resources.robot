*** Settings ***
Library                             SeleniumLibrary
# Library                             AutoRecorder

*** Variables ***
${URL}                              https://www.amazon.com.br/
${MENU_ELETRONICOS}                 //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${LINK_PCINFO}                      //img[@src='https://images-na.ssl-images-amazon.com/images/G/32/BR-hq/2021/img/Consumer_Electronics/Storefronts/Electronics/956.Storefront_categoria_computadores_icons_240x270.jpg']
                                         


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