*** Settings ***
Library         SeleniumLibrary
Resource        ./VX.resource
Test Setup      Abrir o site da VX Comunicação
Test Teardown   Close Browser

*** Test Cases ***
Validação das informações em "Quem Somos"
  Clicar em "Aceitar Cookies"