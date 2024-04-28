# Nodes <!-- omit in toc -->
- [Nodes to implement](#nodes-to-implement)
  - [address\_of\_node (TODO)](#address_of_node-todo)
  - [alloc\_node (TODO)](#alloc_node-todo)
  - [block\_node (IMPLEMENTED)](#block_node-implemented)
  - [declaration\_node (TODO)](#declaration_node-todo)
  - [evaluation\_node (ALREADY-DONE)](#evaluation_node-already-done)
  - [function\_call\_node (TODO)](#function_call_node-todo)
  - [function\_node (TODO)](#function_node-todo)
  - [identity\_node (TODO)](#identity_node-todo)
  - [if\_else\_node (ALREADY-DONE)](#if_else_node-already-done)
  - [if\_node (ALREADY-DONE)](#if_node-already-done)
  - [read\_node (IMPLEMENTED)](#read_node-implemented)
  - [next\_node (IMPLEMENTED)](#next_node-implemented)
  - [nullptr\_node (TODO)](#nullptr_node-todo)
  - [index\_node (IMPLEMENTED)](#index_node-implemented)
  - [print\_node (IMPLEMENTED)](#print_node-implemented)
  - [return\_node (IMPLEMENTED)](#return_node-implemented)
  - [sizeof\_node (IMPLEMENTED)](#sizeof_node-implemented)
  - [stop\_node (IMPLEMENTED)](#stop_node-implemented)
  - [loop\_node (IMPLEMENTED)](#loop_node-implemented)

## Nodes to implement

1. - [ ] [address_of_node](#address_of_node-todo) -> `set` na realidade
2. - [ ] [alloc_node](#alloc_node-todo) -> `objects` na realidade
3. - [X] [block_node](#block_node-implemented)
4. - [ ] [declaration_node](#declaration_node-todo)
5. - [X] [evaluation_node](#evaluation_node-already-done)
6. - [ ] [function_call_node](#function_call_node-todo)
7. - [ ] [function_node](#function_node-todo)
8. - [ ] [identity_node](#identity_node-todo)
9. - [X] [if_else_node](#if_else_node-already-done) -> semi implementado mas tenho dúvidas
10. - [X] [if_node](#if_node-already-done) -> semi implementado mas tenho dúvidas
11. - [X] [read_node](#read_node-implemented) -> semi implementado mas tenho dúvidas
12. - [X] [next_node](#next_node-implemented)
13. - [ ] [nullptr_node](#nullptr_node-todo)
14. - [X] [index_node](#index_node-implemented)
15. - [X] [print_node](#print_node-implemented) -> semi implementado mas tenho dúvidas
16. - [X] [return_node](#return_node-implemented)
17. - [X] [sizeof_node](#sizeof_node-implemented)
18. - [X] [stop_node](#stop_node-implemented)
19. - [X] [loop_node](#loop_node-implemented)

---

### address_of_node (TODO)

- O que é: 
- O que recebe: 


### alloc_node (TODO)

- O que é: 
- O que recebe: 


### block_node (IMPLEMENTED)

agora é "(block ... )" ao invés de "{ ... }"

- O que é: `instrução`
- O que recebe: `declarações` e `instruções` -> sequence_node


### declaration_node (TODO)

- O que é: 
- O que recebe: 


### evaluation_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### function_call_node (TODO)

- O que é: 
- O que recebe: 


### function_node (TODO)

- O que é: 
- O que recebe: 


### identity_node (TODO)

- O que é: 
- O que recebe: 


### if_else_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### if_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### read_node (IMPLEMENTED)

Antigo `input_node`, mas não percebi bem o que é que faz

- O que é: 
- O que recebe: 


### next_node (IMPLEMENTED)

- O que é: `instrução`
- O que recebe: `literal-inteiro` aka inteiro (?)


### nullptr_node (TODO)

- O que é: 
- O que recebe: 


### index_node (IMPLEMENTED)

Antigo `pointer_index_node`

- O que é: `expressão`
- O que recebe: pointer e inteiro?


### print_node (IMPLEMENTED)

Agora é `print` e `println` ao invés de `!` e `!!`

> Porque é que é preciso a `_append_newline`?

- O que é: `instrução`
- O que recebe: `expressões` !plural aka `sequence_node`


### return_node (IMPLEMENTED)

- O que é: `instrução`
- O que recebe: `expressão`


### sizeof_node (IMPLEMENTED)

- O que é: `expressão`
- O que recebe: `expressão`


### stop_node (IMPLEMENTED)

- O que é: `instrução`
- O que recebe: `literal-inteiro` aka inteiro (?)

### loop_node (IMPLEMENTED)

Antigo `while_node`

- O que é: `instrução`
- O que recebe: `expressão` + `instrução`

---

1.  block aka {}
2.  if
3.  loop
4.  stop
5.  next
6.  return
7.  print + println
8.  read
9.  null
10. index
11. objects
12. sizeof
13. function
14. program -> antigo begin + end
15. aaa
16. aaa
17. aaa
18. aaa
19. aaa
