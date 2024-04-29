# Nodes <!-- omit in toc -->
- [Nodes to implement](#nodes-to-implement)
  - [address\_of\_node (IMPLEMENTED)](#address_of_node-implemented)
  - [alloc\_node (IMPLEMENTED)](#alloc_node-implemented)
  - [block\_node (IMPLEMENTED)](#block_node-implemented)
  - [declaration\_node (IMPLEMENTED)](#declaration_node-implemented)
  - [evaluation\_node (ALREADY-DONE)](#evaluation_node-already-done)
  - [function\_call\_node (IMPLEMENTED)](#function_call_node-implemented)
  - [function\_definition\_node (IMPLEMENTED)](#function_definition_node-implemented)
  - [if\_else\_node (ALREADY-DONE)](#if_else_node-already-done)
  - [if\_node (ALREADY-DONE)](#if_node-already-done)
  - [read\_node (IMPLEMENTED)](#read_node-implemented)
  - [next\_node (IMPLEMENTED)](#next_node-implemented)
  - [null\_node (IMPLEMENTED)](#null_node-implemented)
  - [index\_node (IMPLEMENTED)](#index_node-implemented)
  - [print\_node (IMPLEMENTED)](#print_node-implemented)
  - [return\_node (IMPLEMENTED)](#return_node-implemented)
  - [sizeof\_node (IMPLEMENTED)](#sizeof_node-implemented)
  - [stop\_node (IMPLEMENTED)](#stop_node-implemented)
  - [loop\_node (IMPLEMENTED)](#loop_node-implemented)

## Nodes to implement

1. - [X] [address_of_node](#address_of_node-implemented)
2. - [X] [alloc_node](#alloc_node-implemented)
3. - [X] [block_node](#block_node-implemented)
4. - [X] [declaration_node](#declaration_node-implemented)
5. - [X] [evaluation_node](#evaluation_node-already-done)
6. - [X] [function_call_node](#function_call_node-implemented)
7. - [X] [function_definition_node](#function_definition_node-implemented)
8. - [X] [if_else_node](#if_else_node-already-done) -> semi implementado mas tenho dúvidas
9.  - [X] [if_node](#if_node-already-done) -> semi implementado mas tenho dúvidas
10. - [X] [read_node](#read_node-implemented) -> semi implementado mas tenho dúvidas
11. - [X] [next_node](#next_node-implemented)
12. - [X] [null_node](#null_node-implemented)
13. - [X] [index_node](#index_node-implemented)
14. - [X] [print_node](#print_node-implemented) -> semi implementado mas tenho dúvidas
15. - [X] [return_node](#return_node-implemented)
16. - [X] [sizeof_node](#sizeof_node-implemented)
17. - [X] [stop_node](#stop_node-implemented)
18. - [X] [loop_node](#loop_node-implemented)

---

### address_of_node (IMPLEMENTED)

### alloc_node (IMPLEMENTED)

**acho** que são os `objects`

### block_node (IMPLEMENTED)

agora é "(block ... )" ao invés de "{ ... }"

- O que é: `instrução`
- O que recebe: `declarações` e `instruções` -> sequence_node


### declaration_node (IMPLEMENTED)

### evaluation_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### function_call_node (IMPLEMENTED)

### function_definition_node (IMPLEMENTED)

### if_else_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### if_node (ALREADY-DONE)

**acho** que não é preciso alterar nada do DM

### read_node (IMPLEMENTED)

Antigo `input_node`, mas não percebi bem o que é que faz

### next_node (IMPLEMENTED)

- O que é: `instrução`
- O que recebe: `literal-inteiro` aka inteiro (?)


### null_node (IMPLEMENTED)

Antigo `nullptr_node`

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
