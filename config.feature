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

            Cenário: Número de produtos
            Quando eu tiver 10 produtos no carrinho
            Então deve permitir a compra

            Cenário: Botão "limpar"
            Quando eu apertar o botão "limpar"
            Então deve voltar ao estado original

            Esquema do Cenário: Quantidade inválida
            Quando eu selecionar a <quantidade>
            Então deve aparecer a <mensagem> de erro

            Exemplos:
            | quantidade | mensagem              |
            | 9          | "Quantidade inválida" |
            | 11         | "Quantidade inválida" |

Obs: Ao revisar o exercício me atentei que o critério de aceitação cita a exclusividade de 10 itens; "Deve permitir APENAS 10 produtos por venda". Desta forma, a quantidade "9" é inválida.