*** Settings ***
Library         SeleniumLibrary
Resource        ./VX.resource
Test Setup      Abrir o site da VX Comunicação
Test Teardown   Close Browser

*** Test Cases ***
Validação das informações em "Quem Somos"
  Clicar em "Aceitar Cookies"
  Ir para página "Quem somos"
  Ir para a pagina "Criação de Sites"
  Ir para a pagina "Apps e Games"