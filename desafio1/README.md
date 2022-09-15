# Desafio 1
## Refinando um Projeto Conceitual de Banco de Dados – E-COMMERCE
Refine o modelo apresentado acrescentando os seguintes pontos:
- Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
- Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
- Entrega – Possui status e código de rastreio.

### Resolução
- Usando o conceito de especialização, o Cliente pode ser representado como PF ou PJ. Foi usada uma solução alternativa para representá-lo no Workbench;
- Pagamento foi representado tendo um relacionamento 1:N com Cliente, para que cada um destes possa ter mais de uma forma de cadastrado porém o mesmo cartão não possa ser cadastrado por mais de um usuário;
- Entrega foi modelada como uma entidade com relacionamento 1:N com Pedido e com a entidade que representa o relacionamento de Pedido com Produto, esta última com cardinalidade inversa. A ideia é que um pedido possa gerar mais de uma entrega e que cada entrega possa ser responsável por mais de um dos produtos pedidos. Alguns atributos foram eliminados nesses relacionamentos para evitar redundância.