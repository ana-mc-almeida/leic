# Nodes <!-- omit in toc -->
- [Nodes to implement](#nodes-to-implement)
  - [address\_of\_node (TODO)](#address_of_node-todo)
  - [alloc\_node (TODO)](#alloc_node-todo)
  - [block\_node (TODO)](#block_node-todo)
  - [declaration\_node (TODO)](#declaration_node-todo)
  - [evaluation\_node (TODO)](#evaluation_node-todo)
  - [function\_call\_node (TODO)](#function_call_node-todo)
  - [function\_node (TODO)](#function_node-todo)
  - [identity\_node (TODO)](#identity_node-todo)
  - [if\_else\_node (TODO)](#if_else_node-todo)
  - [if\_node (TODO)](#if_node-todo)
  - [read\_node (TODO)](#read_node-todo)
  - [next\_node (IMPLEMENTED)](#next_node-implemented)
  - [nullptr\_node (TODO)](#nullptr_node-todo)
  - [pointer\_index\_node (TODO)](#pointer_index_node-todo)
  - [print\_node](#print_node)
  - [return\_node (IMPLEMENTED)](#return_node-implemented)
  - [sizeof\_node (IMPLEMENTED)](#sizeof_node-implemented)
  - [stop\_node (IMPLEMENTED)](#stop_node-implemented)
  - [loop\_node (IMPLEMENTED)](#loop_node-implemented)

## Nodes to implement

1. - [ ] [address_of_node](#address_of_node-todo) -> set na realidade
2. - [ ] [alloc_node](#alloc_node-todo) -> objects na realidade
3. - [ ] [block_node](#block_node-todo)
4. - [ ] [declaration_node](#declaration_node-todo)
5. - [ ] [evaluation_node](#evaluation_node-todo)
6. - [ ] [function_call_node](#function_call_node-todo)
7. - [ ] [function_node](#function_node-todo)
8. - [ ] [identity_node](#identity_node-todo)
9. - [ ] [if_else_node](#if_else_node-todo) -> semi implementado mas tenho dúvidas
10. - [ ] [if_node](#if_node-todo) -> semi implementado mas tenho dúvidas
11. - [ ] [read_node](#read_node-todo)
12. - [X] [next_node](#next_node-implemented)
13. - [ ] [nullptr_node](#nullptr_node-todo)
14. - [ ] [pointer_index_node](#pointer_index_node-todo) -> index na realidade
15. - [ ] [print_node](#print_node) -> semi implementado mas tenho dúvidas
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


### block_node (TODO)

agora é "(block ... )" ao invés de "{ ... }"

- O que é: 
- O que recebe: 


### declaration_node (TODO)

- O que é: 
- O que recebe: 


### evaluation_node (TODO)

- O que é: 
- O que recebe: 


### function_call_node (TODO)

- O que é: 
- O que recebe: 


### function_node (TODO)

- O que é: 
- O que recebe: 


### identity_node (TODO)

- O que é: 
- O que recebe: 


### if_else_node (TODO)

- O que é: 
- O que recebe: 


### if_node (TODO)

- O que é: 
- O que recebe: 


### read_node (TODO)

Antigo `input_node`, mas não percebi bem o que é que faz

- O que é: 
- O que recebe: 


### next_node (IMPLEMENTED)

- O que é: `instrução`
- O que recebe: `literal-inteiro` aka inteiro (?)


### nullptr_node (TODO)

- O que é: 
- O que recebe: 


### pointer_index_node (TODO)

- O que é: 
- O que recebe: 


### print_node

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
