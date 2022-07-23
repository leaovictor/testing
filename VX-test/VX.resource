*** Variables ***
${SITE}                                      https://www.vxcomunicacao.com.br
${NAVEGADOR}                                 Firefox
${BTN_PROSSEGUIR}                            css=.catapultCookie
${TEXT_QUEMSOMOS}                            Quem Somos
${BTN_QUEMSOMOS}                             css=#menu-item-24 > a:nth-child(1)
${TEXT_ONLINE}                               canais online
${LINK_CREATE}                               xpath=/html/body/div[1]/main/section[4]/div/div/div[1]/a/div/div/p/span
${LINK_APPGAMES}                             xpath=/html/body/div[1]/main/section[4]/div/div/div[2]/a/div/div/p/span
${LINK_SOCIALMEDIA}                          xpath=/html/body/div[1]/main/section[4]/div/div/div[3]/a/div/div/p/span
${LINK_INTRANETESISTEMAS}                    xpath=/html/body/div[1]/main/section[4]/div/div/div[4]/a/div/div/p/span
${LINK_INBOUNDMARKETING}                     xpath=/html/body/div[1]/main/section[4]/div/div/div[5]/a/div/div/p/span
${LINK_MARKETINGPROMOCIONAL}                 xpath=/html/body/div[1]/main/section[4]/div/div/div[6]/a/div/div/p/span
${LINK_PLANEJAMENTODEMIDIA}                  xpath=/html/body/div[1]/main/section[4]/div/div/div[7]/a/div/div/p/span
${LINK_PLANEJAMENTODEMKTDIGITAL}             xpath=/html/body/div[1]/main/section[4]/div/div/div[8]/a/div/div/p/span
${TEXT_OFFLINE}                              mídias offline
${LINK_CRIACAODEMARCA}                       xpath=/html/body/div[1]/main/section[7]/div/div/div[1]/a/div/div/p/span
${LINK_IDVISUAIS}                            xpath=/html/body/div[1]/main/section[7]/div/div/div[2]/a/div/div/p/span
${LINK_DIAG&EDIT}                            xpath=/html/body/div[1]/main/section[7]/div/div/div[3]/a/div/div/p/span
${LINK_BELOWTHELINE}                         xpath=/html/body/div[1]/main/section[7]/div/div/div[4]/a/div/div/p/span
${LINK_PAPELARIA}                            xpath=/html/body/div[1]/main/section[7]/div/div/div[5]/a/div/div/p/span
${LINK_GIFTING}                              xpath=/html/body/div[1]/main/section[7]/div/div/div[6]/a/div/div/p/span
${TEXT_FALECOMESPECIALISTA}                  Fale com um especialista
${BTN_FALECOMESPECIALISTA}                   xpath=/html/body/div[1]/main/section[8]/div/div/div/a
${BTN_SERVIÇOS}                              xpath=/html/body/div[1]/header/div[1]/div/div[2]/nav/ul/li[2]/a
${TEXT_MKT_DIGITAL}                          Yes, nós temos Marketing Digital!
${LINK_CRIASITES}                            css=.p-t-55:nth-child(4) .col-service:nth-child(1) .titulo


*** Keywords ***
# Validação das informações em "Quem Somos"

Abrir o site da VX Comunicação
  Open Browser                               ${SITE}     ${NAVEGADOR}
  Maximize Browser Window
  
Clicar em "Aceitar Cookies"
  Sleep  5
  Wait and Click                             ${BTN_PROSSEGUIR}
  
Ir para página "Quem somos"
  Sleep  2
  Page Should Contain                        ${TEXT_QUEMSOMOS}
  Wait and Click                             ${BTN_QUEMSOMOS}

Verificar os Canais Online
  Sleep  3
  Execute Javascript                         window.scroll(0,500)
  Page Should Contain                        ${TEXT_ONLINE}

Acessar o Link "Criação de Sites"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_CREATE}
  Go Back

Acessar o Link "Apps e Games"
  Sleep  2
  Execute Javascript                         window.scroll(0,300)
  Sleep  2
  Wait and Click                             ${LINK_APPGAMES}
  Go Back

Acessar o Link "Social Media"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_SOCIALMEDIA}
  Go Back

Acessar o Link "Intranet e Sistemas"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_INTRANETESISTEMAS}
  Go Back
  
Acessar o Link "Inbound Marketing"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_INBOUNDMARKETING}
  Go Back

Acessar o Link "Marketing Promocional"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_MARKETINGPROMOCIONAL}
  Go Back
  
Acessar o Link "Planejamento de Mídia Online"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_PLANEJAMENTODEMIDIA}
  Go Back

Acessar o Link "Planejamento de Marketing Digital"
  Sleep  2
  Execute Javascript                         window.scroll(0,800)
  Sleep  2
  Wait and Click                             ${LINK_PLANEJAMENTODEMKTDIGITAL}
  Go Back

Verificar os Canais Offline
  Sleep  3
  Execute Javascript                         window.scroll(0,900)
  Page Should Contain                        ${TEXT_OFFLINE}

Acessar o Link "Criação de Marca"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_CRIACAODEMARCA}
  Go Back

Acessar o Link "Identidades Visuais"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_IDVISUAIS}
  Go Back

Acessar o Link "Diagramação e Editoração"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_DIAG&EDIT}
  Go Back

Acessar o Link "Below The Line"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_BELOWTHELINE}
  Go Back

Acessar o Link "Papelaria e Folheteria"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_PAPELARIA}
  Go Back

Acessar o Link "Gifting"
  Sleep  2
  Execute Javascript                         window.scroll(0,900)
  Sleep  2
  Wait and Click                             ${LINK_GIFTING}
  Go Back

Verificar se há um link para contato com especialista e acessar
  Sleep  3
  Execute Javascript                         window.scroll(0,900)
  Page Should Contain                        ${TEXT_FALECOMESPECIALISTA}
  Wait and Click                             ${BTN_FALECOMESPECIALISTA}
  
Clicar em "Serviços"
  Sleep  3
  Wait and Click                             ${BTN_SERVIÇOS}

Verificar se existe serviço de "Marketing Digital"
  Sleep  3
  Execute Javascript                         window.scroll(0,900)
  Page Should Contain                        ${TEXT_MKT_DIGITAL}
  
Ir para "Criação de Sites"

  Sleep  3
  Execute Javascript                         window.scroll(0,600)
  Wait and Click                             ${LINK_CRIASITES}   




Wait and Click
  [Arguments]                                ${ELEMENTO}
  Wait Until Element is Visible              ${ELEMENTO}
  Click Element                              ${ELEMENTO}