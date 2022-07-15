*** Variables ***
${SITE}                         https://www.vxcomunicacao.com.br
${NAVEGADOR}                    Firefox
${BTN_PROSSEGUIR}               css=.catapultCookie
${BTN_QUEMSOMOS}                css=#menu-item-24 > a:nth-child(1)
${LINK_SITECREATE}              xpath=/html/body/div[1]/main/section[4]/div/div/div[1]/a/div/div/p/span
${LINK_SITEAPPGAMES}            xpath=/html/body/div[1]/main/section[4]/div/div/div[2]/a/div/div/p/span

*** Keywords ***
Abrir o site da VX Comunicação
  Open Browser          ${SITE}     ${NAVEGADOR}
  Maximize Browser Window
  
Clicar em "Aceitar Cookies"
  Sleep  5
  Wait and Click        ${BTN_PROSSEGUIR}
  
Ir para página "Quem somos"
  Sleep  2
  Wait and Click        ${BTN_QUEMSOMOS}

Ir para a pagina "Criação de Sites"
  Sleep  2
  Execute Javascript    window.scroll(0,900)
  Sleep  2
  Wait and Click  ${LINK_SITECREATE}
  Go Back

Ir para a pagina "Apps e Games"
  Sleep  2
  Execute Javascript    window.scroll(0,900)
  Sleep  2
  Wait and Click  ${LINK_SITEAPPGAMES}
  Go Back
  







Wait and Click
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Click Element                     ${ELEMENTO}