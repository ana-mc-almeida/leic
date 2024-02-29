# TupleSpaces

[Enunciado](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md)

[Nosso repositório](https://github.com/tecnico-distsys/A16-TupleSpaces)

### Notas Projeto:

[Resumo do Projeto](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es)

- _read_ e _take_ são bloqueantes -> se não existir aquele tuplo o client fica em espera até algum outro cliente criar aquele tuplo

#### Dicas Stor

1. Começar por fazer a comunicação sem os processos bloqueantes a bloquear ([Lab03](https://tecnico-distsys.github.io/03-rpc/index.html) e [Lab04](https://tecnico-distsys.github.io/04-rpc-error/index.html))
2. Fazer os processos bloqueantes a bloquear ([Lab04](https://tecnico-distsys.github.io/04-rpc-error/index.html))
3. Server Name ([Lab05](https://tecnico-distsys.github.io/05-grpc-multilanguage/index.html))

#### TODO

- [ ] opção `-debug` - especificações [aqui](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#op%C3%A7%C3%A3o-de-debug)
  - Adicionar a flag `-degub` como argumento nas cenas Java
  - :warning: em relação à pergunta "debug flag `-debug` vs `-Ddebug=true`"
- [ ] Comandos do client
  - `setdelay`, que recebe como argumentos o identificador de um servidor e um inteiro. Daí em diante, sempre que o cliente se prepare para enviar pedidos a esse servidor, o cliente deve primeiro esperar o número de segundos que foi definido no 2º argumento e só depois envia o pedido ao servidor. O comando setdelay pode ser chamado múltiplas vezes, permitindo assim redefinir ou mesmo anular o atraso associado a cada servidor.
  - `sleep`, que bloqueia o cliente pelo número de segundos passado como único argumento.
  - `exit`, que termina o cliente.
- [X] Validar os argumentos das operações ([no servidor](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es))
- [ ] As instruções de instalação e configuração de todo o sistema, de modo a que este possa ser colocado em funcionamento, devem ser colocadas no documento README.md
- [X] Adicionar os locks
  - Assumimos que não faz sentido ser preciso lockers no `namingServer` e os locks do client já estão implementados
- [ ] levantar excepção no nameserver
  - :warning: quando nos dizem que o `namingServer` retorna uma **excepção** é suposto não retornarmos uma string?
- [ ] garantir que o nameserver está a devolver mais do que um servidor
- [X] getTupleSpacesState
- [ ] Remover todos os `System.exit(0);` 
  - :warning: after answer the "o que fazer quando um client se tenta ligar e não há nenhum servidor?"

#### Ask

- [X] temos de verificar se só um server é que tem aquele qualifier?
  - não
- [X] são preciso locker no nameserver
  - talvez
- [ ] o que fazer quando um client se tenta ligar e não há nenhum servidor?
  - Estamos a encerrar o client :)
- [X] é mesmo o client que decide o qualificador (server) que quer usar?
  - para a pŕoxima fase
- [ ] debug flag `-debug` vs `-Ddebug=true`
- [ ] quando nos dizem que o `namingServer` retorna uma **excepção** é suposto não retornarmos uma string?
- [X] `sleep`, `setdelay`, `exit` já é para termos agora?
  - Sim, menos o setdelay
- [ ] Devo criar uma pasta domain no nameServer
- [ ] o package de ser `package pt.ulisboa.tecnico.nameserver.contract` ou `package pt.ulisboa.tecnico.tuplespaces.nameserver.contract`
- [X] é suposto só ser possivel ligar a um servidor ou a mais do que um?
  - Neste momento, só a um
- [ ] é ok já termos o `getTupleSpacesState` preparado para mais do que um servidor?
- [ ] temos de lidar com o timeout error do read e do take