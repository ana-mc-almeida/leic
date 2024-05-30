# Intermediate Delivery <!-- omit in toc -->

## TOC <!-- omit in toc -->

- [Usefull links](#usefull-links)
- [TODO](#todo)
  - [\[x\] type_checker.cpp](#x-type_checkercpp)
  - [\[ \] postfix_writer.cpp](#--postfix_writercpp)
- [Funções dos anos passados](#funções-dos-anos-passados)
- [ASK](#ask)

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

### [x] type_checker.cpp

- [ ] verificar as funções add e sub porque neste momento estão iguais mas não sei se podem estar
- [x] do_sequence_node
- [x] do_integer_node
  - Apenas alterei para usar o `create_int`
- [x] do_double_node
- [x] do_string_node
  - Não alterei nada
- [x] do_null_node
- [x] do_not_node
- [x] do_neg_node
  - `do_unary_minus_node` este ano
- [x] do_identity_node
  - `do_unary_plus_node`
- [x] do_sizeof_node
- [x] do_alloc_node
- [x] do_add_node
- [x] do_sub_node
- [x] do_mul_node
- [x] do_div_node
- [x] do_mod_node
- [x] do_lt_node
- [x] do_le_node
- [x] do_ge_node
- [x] do_gt_node
- [x] do_ne_node
- [x] do_eq_node
- [x] do_and_node
- [x] do_or_node
- [x] do_variable_node
  - Não alterei nada nem tenho a certeza se tenho de fazer alguma coisa
- [x] do_rvalue_node
  - Não alterei nada nem tenho a certeza se tenho de fazer alguma coisa
- [x] do_assignment_node
  - Não percebi o que é que estava a acontecer
- [ ] do_block_node
  - [ ] Diogos deixaram nulos mas o antunes não
- [x] do_index_node
- [x] do_address_of_node
  - No idea se está certo
- [x] do_evaluation_node
- [x] do_print_node
- [x] do_read_node
  - do_input_node
- [x] do_function_node
  - Fiz mas só copiei do correia
- [x] do_call_node
  - Fiz mas só copiei do correia
- [x] do_return_node
- [x] do_input_node
  - antigo do_while_node
- [x] do_if_node
- [x] do_if_else_node
- Should be empty
  - [x] do_nil_node
  - [x] do_data_node
  - [x] do_stop_node
  - [x] do_next_node

### [ ] postfix_writer.cpp

- [x] do_double_node
  - Só copiei Antunes
- [x] do_not_node
  - Só copiei Correia
- [x] do_and_node
  - Só copiei Antunes
- [x] do_or_node
  - Só copiei Antunes
- [x] do_sequence_node
  - O correia não alterou por isso também não vou alterar :)
- [x] do_integer_node
- [x] do_string_node
- [x] do_unary_minus_node
  - Copiei o `neg_node` do antunes mas ele verifica se é INT enquanto que o correia verifica se é double
- [x] do_unary_plus_node
  - O correia não alterou por isso também não vou alterar :)
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
- [x] do_variable_node
  - Mistura de cópia
- [ ] do_rvalue_node
- [ ] do_assignment_node
- [x] do_evaluation_node
  - Só copiei do Antunes
- [ ] do_print_node
- [ ] do_read_node
- [ ] do_loop_node
- [ ] do_stop_node
- [x] do_sizeof_node
  - Só copiei do Antunes
- [ ] do_return_node
- [ ] do_next_node
- [ ] do_block_node
- [x] do_index_node
  - Só copiei do Antunes
- [x] do_null_node
- [x] do_address_node
  - Copiei do antunes mas mudava só um `+2` do correia
- [x] do_alloc_node
  - Copiei do Antunes
- [ ] do_declaration_node
- [ ] do_function_definition_node
- [ ] do_function_call_node
- [x] do_if_node
  - Não acho que seja preciso mudar porque o Antunes tem igual
- [x] do_if_else_node
  - Não acho que seja preciso mudar porque o Antunes tem igual
- Should be empty
  - [x] do_nil_node
  - [x] do_data_node

## Funções dos anos passados

- Antunes
  - is_same
  - unify
  - do_variable_declaration_node

## ASK

- type_checker:
  - [ ] No `do_sequence_node` é suposto adicionarmos o +2 no `lvl`?
  - [ ] O do_block_node é suposto estar vazio?
  - [ ] O Correia não faz a distinção entre `processBinaryCompareExpression` e `processEqExpression`
