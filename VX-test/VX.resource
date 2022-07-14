*** Variables ***
${SITE}                         https://www.vxcomunicacao.com.br
${NAVEGADOR}                    Chrome
${IFRAME_COOKIES}               xpath=/html/body/div[2]
${BOTAO_COOKIES}                xpath=/html/body/div[2]/p[2]/button


*** Keywords ***
Abrir o site da VX Comunicação
  Open Browser          ${SITE}     ${NAVEGADOR}
  Maximize Browser Window
  
Clicar em "Aceitar Cookies"
  Sleep  5
  Select Frame          ${IFRAME_COOKIES}
  Wait and Click        ${BOTAO_COOKIES}
  Unselect Frame




Wait and Click
  [Arguments]                       ${ELEMENTO}
  Wait Until Element is Visible     ${ELEMENTO}
  Click Element                     ${ELEMENTO}