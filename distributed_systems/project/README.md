# TupleSpaces

[Enunciado](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md)

[Nosso repositório](https://github.com/tecnico-distsys/A16-TupleSpaces)

### Notas Projeto:

[Resumo do Projeto](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es)

#### TODO

- [] opção `-debug` - especificações [aqui](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#op%C3%A7%C3%A3o-de-debug)
- Comandos do client
  - `setdelay`, que recebe como argumentos o identificador de um servidor e um inteiro. Daí em diante, sempre que o cliente se prepare para enviar pedidos a esse servidor, o cliente deve primeiro esperar o número de segundos que foi definido no 2º argumento e só depois envia o pedido ao servidor. O comando setdelay pode ser chamado múltiplas vezes, permitindo assim redefinir ou mesmo anular o atraso associado a cada servidor.
  - `sleep`, que bloqueia o cliente pelo número de segundos passado como único argumento.
  - `exit`, que termina o cliente.
- Validar os argumentos das operações ([no servidor](https://github.com/tecnico-distsys/TupleSpaces/blob/master/tuplespaces.md#valida%C3%A7%C3%B5es))
- As instruções de instalação e configuração de todo o sistema, de modo a que este possa ser colocado em funcionamento, devem ser colocadas no documento README.md
