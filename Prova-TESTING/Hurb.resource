*** Variables ***
${SITE}                           https://www.hurb.com/br
${NAVEGADOR}                      firefox
${BOTAO_COOKIE}                   xpath=//*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
${BOTAO_PACOTE}                   xpath=//*[@id="__next"]/div[1]/div[2]/div/div/div[1]/div/div/button[2]
${CAMPO_CIDADE}                   xpath=//*[@id="destination-input"]
${CIDADE}                         BUENOS AIRES
${BOTAO_PESQUISAR}                xpath=//*[@id="__next"]/div[1]/div[2]/div/div/div[2]/button
${SELECIONAR_PACOTE}              xpath=//*[@id="__next"]/div/main/section/div[2]/a[1]/div[2]
${BOTAO_ESCOLHER}                 xpath=/html/body/div[1]/div/main/div[4]/aside/div/div/div[2]/button
${CHECK_BOX_RIO}                  xpath=//*[@id="LGPKG-1384831-3032675"]
${BOTAO_PROXIMO}                  css=html body.h-10gpk7a div.ReactModalPortal div.h-c4h1qi.h-1j7grw6 div.ReactModal__Content.ReactModal__Content--after-open.h-6zwkjc.CustomizeYourTravelModal_CustomizeYourTravelModalStructure__IL0Kd div.h-1956iup footer.h-wylss8.CustomizeYourTravelModal_FooterContainer__3JPER button.h-1yuatql
${DIARIAS}                        css=html body.h-10gpk7a div.ReactModalPortal div.h-c4h1qi.h-1j7grw6 div.ReactModal__Content.ReactModal__Content--after-open.h-6zwkjc.CustomizeYourTravelModal_CustomizeYourTravelModalStructure__IL0Kd div.h-1956iup section.h-1d1zthg.CustomizeYourTravelModal_ContentFixed__4o1YY div.h-1e1uxvf button.h-cqz66k.DailiesSelectionStep_Card__DaltZ div.h-1sdogxk div.h-7k3cv9
${BOTAO_PROXIMO2}                 css=html body.h-10gpk7a div.ReactModalPortal div.h-c4h1qi.h-1j7grw6 div.ReactModal__Content.ReactModal__Content--after-open.h-6zwkjc.CustomizeYourTravelModal_CustomizeYourTravelModalStructure__IL0Kd div.h-1956iup footer.h-wylss8.CustomizeYourTravelModal_FooterContainer__3JPER button.h-1yuatql
${BOTAO_IR_PGTO}                  css=html body.h-10gpk7a div.ReactModalPortal div.h-c4h1qi.h-1j7grw6 div.ReactModal__Content.ReactModal__Content--after-open.h-6zwkjc.CustomizeYourTravelModal_CustomizeYourTravelModalStructure__IL0Kd div.h-1956iup footer.h-wylss8.CustomizeYourTravelModal_FooterContainer__3JPER button.h-1yuatql
${VALIDAR_PACOTE}                 Pacote Buenos Aires
${VALIDAR_ORIGEM}                 Aéreo do Rio de Janeiro
${VALIDAR_DATA_INICIO}            01 Mar 2024
${VALIDAR_DATA_FIM}               30 Nov 2024
${VALIDAR_VALOR_TOTAL}            R$ 959,00
${SELECIONAR_BOLETO}              css=html.no-js.ComHotelurbano-container body.page-checkout div.container div.checkout.row div.checkout__payment.col-md-8.col-sm-8.col-xs-12 div.row div.payment.payment__container.col-md-12.col-sm-12.col-xs-12 form#paymentForm.payment div.row div.col-md-12.col-sm-12.col-xs-12 div#paymentMethods.ui-tabs.ui-widget.ui-widget-content.ui-corner-all ul.ui-tabs-nav.ui-helper-reset.ui-helper-clearfix.ui-widget-header.ui-corner-all li.tab-button.ui-state-default.ui-corner-top a#ui-id-1.ui-tabs-anchor
${CAMPO_NOME}                     css=html.no-js.ComHotelurbano-container body.page-checkout div.container div.checkout.row div.checkout__payment.col-md-8.col-sm-8.col-xs-12 div.row div.payment.payment__container.col-md-12.col-sm-12.col-xs-12 form#paymentForm.payment div.row div.col-md-12.col-sm-12.col-xs-12 div#paymentMethods.ui-tabs.ui-widget.ui-widget-content.ui-corner-all div#paymentMethods__bill.bill.ui-tabs-panel.ui-widget-content.ui-corner-bottom section.bill__section div.row div.col-lg-6.col-md-12 div.form-group input.form-control.bill__holder.creditcard__input.mapx-checkout-hoteis-click-boleto_input_nome
${NOME}                           JESUS CRISTO
${CAMPO_CPF}                      css=html.no-js.ComHotelurbano-container body.page-checkout div.container div.checkout.row div.checkout__payment.col-md-8.col-sm-8.col-xs-12 div.row div.payment.payment__container.col-md-12.col-sm-12.col-xs-12 form#paymentForm.payment div.row div.col-md-12.col-sm-12.col-xs-12 div#paymentMethods.ui-tabs.ui-widget.ui-widget-content.ui-corner-all div#paymentMethods__bill.bill.ui-tabs-panel.ui-widget-content.ui-corner-bottom section.bill__section div.row div.col-lg-6.col-md-12 div.form-group input.form-control.bill_cpf.creditcard__input.mapx-checkout-hoteis-click-cartao_input_cpf
${CPF}                            03885394022
${CAMPO_TELEFONE}                 css=html.no-js.ComHotelurbano-container body.page-checkout div.container div.checkout.row div.checkout__payment.col-md-8.col-sm-8.col-xs-12 div.row div.payment.payment__container.col-md-12.col-sm-12.col-xs-12 form#paymentForm.payment div.row div.col-md-12.col-sm-12.col-xs-12 div#paymentMethods.ui-tabs.ui-widget.ui-widget-content.ui-corner-all div#paymentMethods__bill.bill.ui-tabs-panel.ui-widget-content.ui-corner-bottom section.bill__section div.row div.col-lg-6.col-md-12 div.form-group input.form-control.creditcard__phone.creditcard__input.mapx-checkout-hoteis-click-boleto_input_nome
${TELEFONE}                       2199125003
${CHECKBOX_TERMOS_DE_USO}         css=html.no-js.ComHotelurbano-container body.page-checkout div.container div.checkout.row div.checkout__payment.col-md-8.col-sm-8.col-xs-12 div.row div.payment.payment__container.col-md-12.col-sm-12.col-xs-12 form#paymentForm.payment div.cancellation-policy.col-md-12.col-sm-12.col-xs-12 div.cancellation-policy__policy-button div#user-agreement.col-md-6.col-sm-6.col-xs-12 section.cancellation-policy__section input#cancellation-policy
${VALIDAR_CANCELAMENTO}           Cancelamento Grátis


*** Keywords ***
Abrir o site do Hurb
  Open Browser                    ${SITE}                   ${NAVEGADOR}
  Maximize Browser Window

Clicar em “Permitir todos os cookies”
  Sleep  3
  Wait and Click                  ${BOTAO_COOKIE}

Selecionar a opção “Pacotes”
  Wait and Click                  ${BOTAO_PACOTE}

Buscar por alguma cidade turística
  Sleep  2
  Input Text                      ${CAMPO_CIDADE}           ${CIDADE}
  Click Element                   ${BOTAO_PESQUISAR}

Selecionar um pacote de viagem
  Wait and Click                  ${SELECIONAR_PACOTE}
  Switch Window                   NEW

Clicar em “Escolher pacote”
  Sleep  3
  Execute Javascript    window.scroll(0,900)
  Wait and Click                  ${BOTAO_ESCOLHER}

Selecionar as opções do pacote e clicar em “Ir para pagamento”
  Wait and Click                  ${CHECK_BOX_RIO}
  Sleep  2
  Wait and Click                  ${BOTAO_PROXIMO}
  Wait and Click                  ${DIARIAS}
  Wait and Click                  ${BOTAO_PROXIMO2}
  Wait and Click                  ${BOTAO_IR_PGTO}

Validar as informações da “Configuração” da viagem
  Sleep  3
  Page Should Contain             ${VALIDAR_PACOTE}
  Page Should Contain             ${VALIDAR_ORIGEM}

 Validar as informações do período da viagem
  Page Should Contain             ${VALIDAR_DATA_INICIO}
  Page Should Contain             ${VALIDAR_DATA_FIM}

Selecionar a opção “Boleto parcelado”
  Sleep  5
  Wait and Click                  ${SELECIONAR_BOLETO}    

Preencher os dados de pagamento
  Sleep  3
  Execute Javascript    window.scroll(0, 900)
  Input Text                      ${CAMPO_NOME}           ${NOME}
  Sleep  1
  Input Text                      ${CAMPO_CPF}            ${CPF}
  Sleep  1
  Input Text                      ${CAMPO_TELEFONE}       ${TELEFONE}

Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Sleep  2
  Wait and Click  ${CHECKBOX_TERMOS_DE_USO}

Validar a informação sobre cancelamento grátis
  Sleep  2
  Execute Javascript    window.scroll(900, 0)
  Sleep  5
  Page Should Contain             ${VALIDAR_CANCELAMENTO}



Wait and Click
  [Arguments]                     ${ELEMENTO}
  Wait Until Element is Visible   ${ELEMENTO}
  Click Element                   ${ELEMENTO}

