*** Variables ***
${SITE}                     https://bugbank.netlify.app
${NAVEGADOR}                Chrome
${BOTAO_REGISTRAR}          xpath=//*[@id="__next"]/div[1]/div[2]/div/div[1]/form/div[3]/button[2]
${CAMPO_EMAIL}              xpath=//*[@id="__next"]/div[1]/div[2]/div/div[2]/form/div[2]/input
${EMAIL}                    leaovic@gmail.com
${CAMPO_NOME}               xpath=//*[@id="__next"]/div[1]/div[2]/div/div[2]/form/div[3]/input
${NOME}                     Victor
${CAMPO_SENHA}              xpath=//*[@id="__next"]/div[1]/div[2]/div/div[2]/form/div[4]/div/input
${SENHA}                    12345
${CAMPO_RESENHA}            xpath=//*[@id="__next"]/div[1]/div[2]/div/div[2]/form/div[5]/div/input
${RESENHA}                  12345
${BOTAO_CADASTRAR}          xpath=//*[@id="__next"]/div[1]/div[2]/div/div[2]/form/button


# ${CAMPO_USUARIO}            xpath=//*[@id="__next"]/div[1]/div[2]/div/div[1]/form/div[1]/input
# ${USUARIO}                  standard_user
# ${CAMPO_SENHA}              css=#password
# ${SENHA}                    secret_sauce
# ${BOTAO_LOGIN}              css=#login-button
# ${ADICIONAR_CARRINHO}       css=#add-to-cart-sauce-labs-backpack
# ${CARRINHO}                 css=#shopping_cart_container > a
# ${BOTAO_CHECKOUT}           css=#checkout
# ${CAMPO_NOME}               css=#first-name
# ${NOME}                     Tiago
# ${CAMPO_SOBRENOME}          css=#last-name
# ${SOBRENOME}                Gomes
# ${CAMPO_CEP}                css=#postal-code
# ${CEP}                      123456
# ${BOTAO_CONTINUE}           css=#continue


*** Keywords ***
Acessar o site
  Open Browser      ${SITE}                 ${NAVEGADOR}
  Maximize Browser Window

Clicar em botao registro
  Click Element       ${BOTAO_REGISTRAR}

Fazer o registro de usuario
  Input Text          ${CAMPO_EMAIL}          ${EMAIL}
  Input Text          ${CAMPO_NOME}           ${NOME}
  Input Text          ${CAMPO_SENHA}          ${SENHA}
  Input Text          ${CAMPO_RESENHA}        ${RESENHA}
  Click Element       ${BOTAO_CADASTRAR}
  
# Fazer login
#   Input Text        ${CAMPO_USUARIO}        ${USUARIO}
#   Input Text        ${CAMPO_SENHA}          ${SENHA}
#   Click Element     ${BOTAO_LOGIN}

# Adicionar um produto ao carrinho
#   Click Element     ${ADICIONAR_CARRINHO}

# Acessar o carrinho
#   Click Element     ${CARRINHO}

# Clicar em 'Checkout'
#   Click Element     ${BOTAO_CHECKOUT}

# Preencher informações do usuário
#   Input Text        ${CAMPO_NOME}           ${NOME}
#   Input Text        ${CAMPO_SOBRENOME}      ${SOBRENOME}
#   Input Text        ${CAMPO_CEP}            ${CEP}
#   Click Element     ${BOTAO_CONTINUE}