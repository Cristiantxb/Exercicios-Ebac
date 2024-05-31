            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao_silva@ebac.com.br"
            E a senha "123!"
            Então deve direcionar para a tela de checkout

            Esquema do Cenário: Usuário ou senha inválidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario                 | senha | mensagem                     |
            | "joao@ebac.com.br"      | "qwe" | “Usuário ou senha inválidos” |
            | "maria@ebac.com.br"     | "rty" | “Usuário ou senha inválidos” |
            | "mario_ret@ebac.com.br" | "qwe" | “Usuário ou senha inválidos” |