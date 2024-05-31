            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero fazer meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro

            Cenário: Dados obrigatórios
            Quando eu preencher os campos marcados com asterisco
            E finalizar compra
            Então deve aparecer a mensagem "Compra finalizada com sucesso"

            Cenário: Email inválido
            Quando eu digitar o usuário "joao+opo@top=co"
            Então deve exibir uma mensagem de erro "Email inválido"

            Cenário: Campos vazios
            Quando eu deixar um campo vazio
            E apertat para finalizar compra
            Então deve exibir a mensagem de alerta "Preencher campos obrigatórios"

            Esquema do Cenário: Formato inválido
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario         | senha | mensagem         |
            | "joao_test.cop" | "qwe" | “Email inválido” |
            | "maria=p.m"     | "qwe" | “Email inválido” |
            | "mario_ret.br"  | "qwe" | “Email inválido” |
