*** Settings ***
Library             SeleniumLibrary
Library             AutoRecoder  mode=suite
Resource            ./victor.resource
Test Teardown       Close Browser

*** Test Case ***
Processo de compra na loja Sauce Demo
  Acessar o site
  Clicar em botao registro
  Fazer o registro de usuario
  # Fazer login
  # Adicionar um produto ao carrinho
  # Acessar o carrinho
  # Clicar em 'Checkout'
  # Preencher informações do usuário