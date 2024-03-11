# TupleSpaces

[Enunciado](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md)

[Nosso repositório](https://github.com/tecnico-distsys/A16-TupleSpaces)

### Índice

- [Notas Variante 1](#variante-1)
- [Notas Variante 2](#variante-2)

#### Notas Projeto:

[Resumo do Projeto](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es)

- _read_ e _take_ são bloqueantes -> se não existir aquele tuplo o client fica em espera até algum outro cliente criar aquele tuplo

## Variante 1

### Dicas Stor

1. Começar por fazer a comunicação sem os processos bloqueantes a bloquear ([Lab03](https://tecnico-distsys.github.io/03-rpc/index.html) e [Lab04](https://tecnico-distsys.github.io/04-rpc-error/index.html))
2. Fazer os processos bloqueantes a bloquear ([Lab04](https://tecnico-distsys.github.io/04-rpc-error/index.html))
3. Server Name ([Lab05](https://tecnico-distsys.github.io/05-grpc-multilanguage/index.html))

### TODO

- [X] Comandos do client
  - `setdelay`, que recebe como argumentos o identificador de um servidor e um inteiro. Daí em diante, sempre que o cliente se prepare para enviar pedidos a esse servidor, o cliente deve primeiro esperar o número de segundos que foi definido no 2º argumento e só depois envia o pedido ao servidor. O comando setdelay pode ser chamado múltiplas vezes, permitindo assim redefinir ou mesmo anular o atraso associado a cada servidor.
  - `sleep`, que bloqueia o cliente pelo número de segundos passado como único argumento.
  - `exit`, que termina o cliente.
- [X] Validar os argumentos das operações ([no servidor](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es))
- [X] As instruções de instalação e configuração de todo o sistema, de modo a que este possa ser colocado em funcionamento, devem ser colocadas no documento README.md
- [X] opção `-debug` - especificações [aqui](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#op%C3%A7%C3%A3o-de-debug)
  - Adicionar a flag `-degub` como argumento nas cenas Java
  - :warning: em relação à pergunta "debug flag `-debug` vs `-Ddebug=true`"
- [X] Adicionar os locks
  - Assumimos que não faz sentido ser preciso lockers no `namingServer` e os locks do client já estão implementados
- [X] garantir que o nameserver está a devolver mais do que um servidor
- [X] getTupleSpacesState
- [X] levantar excepção no nameserver
  - :warning: quando nos dizem que o `namingServer` retorna uma **excepção** é suposto não retornarmos uma string?
- [X] Remover todos os `System.exit(0);` 
  - :warning: after answer the "o que fazer quando um client se tenta ligar e não há nenhum servidor?"
  - Afinal é suposto mantê-los :)

### Ask

- [X] temos de verificar se só um server é que tem aquele qualifier?
  - não
- [X] são preciso locker no nameserver
  - talvez
- [X] é mesmo o client que decide o qualificador (server) que quer usar?
  - para a pŕoxima fase
- [X] `sleep`, `setdelay`, `exit` já é para termos agora?
  - Sim, menos o setdelay
- [X] é suposto só ser possivel ligar a um servidor ou a mais do que um?
  - Neste momento, só a um
- [X] é ok já termos o `getTupleSpacesState` preparado para mais do que um servidor?
  - Estamos a assumir que não faz sentido ser problemático
- [X] quando nos dizem que o `namingServer` retorna uma **excepção** é suposto não retornarmos uma string?
  - é suposto retornar excepção
- [X] o que fazer quando um client se tenta ligar e não há nenhum servidor?
  - Estamos a encerrar o client
  - também estamos a encerrar o client quando ele falha **duas vezes** a ligar ao servidor
  - é super ok desligar-mos o client
- [X] debug flag `-debug` vs `-Ddebug=true`
  - Qualquer uma das formas é ok desde que se expecifique no README.md

<br>

- [ ] Devo criar uma pasta domain no nameServer
- [X] temos de lidar com o timeout error do read e do take
  - Não tivemos este erro
- [ ] o package de ser `package pt.ulisboa.tecnico.nameserver.contract` ou `package pt.ulisboa.tecnico.tuplespaces.nameserver.contract`


## Variante 2

### Dicas professor

- Não há se ser preciso alterar o servidor e sim só o client
- O client tem de ter um canal para cada servidor
- Não usar `BlockingStub`
  - os pedidos put têm de ser enviados ao mesmo tempo e se se usar os stubs bloqueantes, vai um de cada vez
  - Usar os `NonBlockingStubs`


- Podemos utilizar só um objeto para esperar pelas respostas:
  - Vantagem: mais simples
  - Desvantagem: não sabemos de onde vêm a resposta 
  - Não há de ser relevante para o `put` e o `read` mas há de ser preciso sabermos de onde vem as respostas do `take`
