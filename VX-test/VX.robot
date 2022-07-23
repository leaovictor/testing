*** Settings ***
Library         SeleniumLibrary
Resource        ./VX.resource
Test Setup      Abrir o site da VX Comunicação
Test Teardown   Close Browser

*** Test Cases ***
Validação das informações em "Quem Somos"
  Clicar em "Aceitar Cookies"
  Ir para página "Quem somos"
  Verificar os Canais Online
  Acessar o Link "Criação de Sites"
  Acessar o Link "Apps e Games"
  Acessar o Link "Social Media"
  Acessar o Link "Intranet e Sistemas"
  Acessar o Link "Inbound Marketing"
  Acessar o Link "Marketing Promocional"
  Acessar o Link "Planejamento de Mídia Online"
  Acessar o Link "Planejamento de Marketing Digital"
  Verificar os Canais Offline
  Acessar o Link "Criação de Marca"
  Acessar o Link "Identidades Visuais"
  Acessar o Link "Diagramação e Editoração"
  Acessar o Link "Below The Line"
  Acessar o Link "Papelaria e Folheteria"
  Acessar o Link "Gifting"
  Verificar se há um link para contato com especialista e acessar

Validação das informações em "Serviços"
  Clicar em "Serviços"
  Verificar se existe serviço de "Marketing Digital"
  Ir para "Criação de Sites"