            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto
            Para inserir no carrinho

            Contexto:
            Dado que eu acesse a página de configurar produto

            Cenário: Selecionar preferências
            Quando eu selecionar cor, tamanho e quantidade
            E adicionar ao carrinho
            Então deve exibir uma mensagem de sucesso "adicionado ao carrinho"

            Cenário: Limite de produtos
            Quando eu tiver até 10 produtos no carrinho
            Então deve permitir a compra

            Cenário: Botão "limpar"
            Quando eu apertar o botão "limpar"
            Então deve voltar ao estado original

            Esquema do Cenário: Quantidade inválida
            Quando eu selecionar a <quantidade>
            Então deve aparecer a <mensagem> de erro

            Exemplos:
            | quantidade | mensagem              |
            | 11         | "Quantidade inválida" |
            | 12         | "Quantidade inválida" |
            | 15         | "Quantidade inválida" |