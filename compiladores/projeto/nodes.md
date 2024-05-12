# Nodes <!-- omit in toc -->

- [Nodes to implement](#nodes-to-implement)
  - [address_of_node (IMPLEMENTED)](#address_of_node-implemented)
  - [alloc_node (IMPLEMENTED)](#alloc_node-implemented)
  - [block_node (IMPLEMENTED)](#block_node-implemented)
  - [declaration_node (IMPLEMENTED)](#declaration_node-implemented)
  - [evaluation_node (ALREADY-DONE)](#evaluation_node-already-done)
  - [function_call_node (IMPLEMENTED)](#function_call_node-implemented)
  - [function_definition_node (IMPLEMENTED)](#function_definition_node-implemented)
  - [if_else_node (ALREADY-DONE)](#if_else_node-already-done)
  - [if_node (ALREADY-DONE)](#if_node-already-done)
  - [read_node (IMPLEMENTED)](#read_node-implemented)
  - [next_node (IMPLEMENTED)](#next_node-implemented)
  - [null_node (IMPLEMENTED)](#null_node-implemented)
  - [index_node (IMPLEMENTED)](#index_node-implemented)
  - [print_node (IMPLEMENTED)](#print_node-implemented)
  - [return_node (IMPLEMENTED)](#return_node-implemented)
  - [sizeof_node (IMPLEMENTED)](#sizeof_node-implemented)
  - [stop_node (IMPLEMENTED)](#stop_node-implemented)
  - [loop_node (IMPLEMENTED)](#loop_node-implemented)

## Nodes to implement

1. - [x] [address_of_node](#address_of_node-implemented)
2. - [x] [alloc_node](#alloc_node-implemented)
3. - [x] [block_node](#block_node-implemented)
4. - [x] [declaration_node](#declaration_node-implemented)
5. - [x] [evaluation_node](#evaluation_node-already-done)
6. - [x] [function_call_node](#function_call_node-implemented)
7. - [x] [function_definition_node](#function_definition_node-implemented)
8. - [x] [if_else_node](#if_else_node-already-done) -> semi implementado mas tenho dúvidas
9. - [x] [if_node](#if_node-already-done) -> semi implementado mas tenho dúvidas
10. - [x] [read_node](#read_node-implemented) -> semi implementado mas tenho dúvidas
11. - [x] [next_node](#next_node-implemented)
12. - [x] [null_node](#null_node-implemented)
13. - [x] [index_node](#index_node-implemented)
14. - [x] [print_node](#print_node-implemented) -> semi implementado mas tenho dúvidas
15. - [x] [return_node](#return_node-implemented)
16. - [x] [sizeof_node](#sizeof_node-implemented)
17. - [x] [stop_node](#stop_node-implemented)
18. - [x] [loop_node](#loop_node-implemented)

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
