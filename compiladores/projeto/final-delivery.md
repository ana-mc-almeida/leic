# Intermediate Delivery <!-- omit in toc -->

## TOC <!-- omit in toc -->

- [Usefull links](#usefull-links)
- [TODO](#todo)
- [Funções dos anos passados](#funções-dos-anos-passados)

## Usefull links

- [Projeto Compiladores (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores)
- [Manual de Referência TIL (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores/Projecto_2023-2024/Manual_de_Refer%C3%AAncia_da_Linguagem_TIL)
- [Pauta Entrega Final (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Pautas_2023-2024/Pauta_do_Projecto:_Entrega_Final)
- Last Year Projects (TIL)
  - [Diogo Correia](https://github.com/ist199211-ist199311/mml-compiler-co/)
  - [Diogo Gaspar](https://github.com/randomicecube/mml-comp)
  - [Ricardo Antunes](https://github.com/Ricardo-Luis-Projects/ist-comp/)
- [Manual de Referência MML (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores/Projecto_2022-2023/Manual_de_Refer%C3%AAncia_da_Linguagem_MML)

## TODO

- [ ] type_checker.cpp
  - [ ] do_sequence_node
  - [ ] do_integer_node
  - [ ] do_double_node
  - [ ] do_string_node
  - [ ] do_null_node
  - [ ] do_not_node
  - [ ] do_neg_node
  - [ ] do_identity_node
  - [ ] do_sizeof_node
  - [ ] do_alloc_node
  - [ ] do_add_node
  - [ ] do_sub_node
  - [ ] do_mul_node
  - [ ] do_div_node
  - [ ] do_mod_node
  - [ ] do_lt_node
  - [ ] do_le_node
  - [ ] do_ge_node
  - [ ] do_gt_node
  - [ ] do_ne_node
  - [ ] do_eq_node
  - [ ] do_and_node
  - [ ] do_or_node
  - [ ] do_variable_node
  - [ ] do_rvalue_node
  - [ ] do_assignment_node
  - [ ] do_block_node
    - [ ] Diogos deixaram nulos mas o antunes não
  - [ ] do_index_node
  - [ ] do_address_of_node
  - [ ] do_evaluation_node
  - [ ] do_print_node
  - [ ] do_input_node
  - [ ] do_function_node
  - [ ] do_call_node
  - [ ] do_return_node
  - [ ] do_while_node
  - [ ] do_if_node
  - [ ] do_if_else_node
  - Should be empty
    - do_stop_node
    - do_next_node
- [ ] postfix_writer.cpp

## Funções dos anos passados

- Antunes
  - is_same
  - unify
  - do_variable_declaration_node
