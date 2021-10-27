*** Settings ***
Resource           ../resource/Resource.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador


### SETUP: ele roda keyword antes da suite ou antes de um Test
### TEARDOWN: ele roda keyword depois de uma suite ou um Test

*** Test Case ***

Caso de Teste 01: Validar usuário inválido
   Clicar no botão login
   Clicar no campo de E-mail, CPF ou CNPJ
   Digitar o CPF "01358427860" no campo de E-mail, CPF ou CNPJ
   Clicar no campo senha
   Digitar senha "123456" no campo senha
   Clicar no botão entrar
   Conferir mensagem de erro "Dados inválidos, tente novamente!"

Caso de Teste 02: Fazer a busca de iphone
   Digitar o nome do produto "iphone" no campo pesquisa
   Clicar no botão pesquisa
   Conferir se o produto "iphone" foi listado no site

Caso de Teste 03: Validar produto no carrinho
   Selecionar o menu Todos os Departamentos
   Selecionar a categoria "Hardware" no menu Todos os Departamentos
   Clicar no primeiro produto listado
   Clicar no botão comprar
   Conferir se o produto foi adicionado no carrinho



*** Keywords ***
