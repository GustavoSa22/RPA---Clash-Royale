## Autor: Gustavo de Almeida Sá
## Última alteração: 14/03/2020
## Versão 1.0

*** Settings ***
Resource                        ./resources_all_main.resource
Suite Setup                     Before 
Suite Teardown                  After


*** Tasks ***
Buscar lista de membros de um cla de Clash Royale
    [Documentation]     Este processo se refere ao acesso via interface e integração por API 
    ...                 para gerar uma lista de membros de um clã de Clash Royale

    Logar no site do Clash Royale

    Gerar uma API Key 
   
    Gerar lista de members do cla


