# Intermediate Delivery <!-- omit in toc -->

## TOC <!-- omit in toc -->

- [Usefull links](#usefull-links)
- [TODO](#todo)
- [Notes to Implement](#notes-to-implement)
- [Palavras-Chave](#palavras-chave)
  - [Tipos de Dados](#tipos-de-dados)
- [Gramática](#gramática)

## Usefull links

- [Projeto Compiladores (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores)
- [Manual de Referência TIL (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores/Projecto_2023-2024/Manual_de_Refer%C3%AAncia_da_Linguagem_TIL)
- [Pauta Entrega Intermédia (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Pautas_2023-2024/Pauta_do_Projecto:_Entrega_Interm%C3%A9dia)
- [Intermediate Delivery by Diogo Correia](https://github.com/ist199211-ist199311/mml-compiler-co/releases/tag/intermediate-delivery)
- [Manual de Referência MML (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Compiladores/Projecto_de_Compiladores/Projecto_2022-2023/Manual_de_Refer%C3%AAncia_da_Linguagem_MML)
- [How to Debug a Flex Specification (Wiki)](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/The_Flex_Lexical_Analyzer#How_to_Debug_a_Flex_Specification)

## TODO

- [ ] Parser Comentários
- [ ] Verificar outra vez as fdeclaration
- [ ] Ver todos os `FIXME`

## Notes to Implement

1. - [ ] [address_of_node](#address_of_node-implemented)
2. - [ ] [alloc_node](#alloc_node-implemented)
3. - [x] [block_node](#block_node-implemented)
4. - [x] [declaration_node](#declaration_node-implemented)
5. - [x] [evaluation_node](#evaluation_node-already-done)
6. - [ ] [function_call_node](#function_call_node-implemented)
7. - [x] [function_definition_node](#function_definition_node-implemented)
8. - [x] [if_else_node](#if_else_node-already-done)
9. - [x] [if_node](#if_node-already-done)
10. - [ ] [read_node](#read_node-implemented)
11. - [x] [next_node](#next_node-implemented)
12. - [ ] [null_node](#null_node-implemented)
13. - [ ] [index_node](#index_node-implemented)
14. - [x] [print_node](#print_node-implemented)
15. - [x] [return_node](#return_node-implemented)
16. - [ ] [sizeof_node](#sizeof_node-implemented)
17. - [x] [stop_node](#stop_node-implemented)
18. - [x] [loop_node](#loop_node-implemented)

## Palavras-Chave

- Tipos
  - [x] int
  - [x] double
  - [x] string
  - [x] void
- Declarações
  - [x] external = antigo foreign
  - [x] forward
  - [x] public
  - [x] var = antigo auto
- Instruções
  - [x] block
  - [x] if
  - [x] loop = antigo while
  - [x] stop
  - [x] next
  - [x] return
  - [x] print
  - [x] println
- Expressões
  - [ ] read
  - [ ] null
  - [ ] set
  - [ ] index
  - [ ] objects
  - [ ] sizeof
  - [x] function
- [x] program

### Tipos de Dados

- [ ] Inteiros `int`
- [ ] Reais `double`
- [ ] Strings
- [ ] Pointers `!`

## Gramática

`[` e `]` = opcional
`<` e `>` = zero ou mais vezes

- [x] ficheiro
  - [x] `⟨  declaração ⟩ [ programa-principal ]`
    - [x] `declarações programa-principal`
    - [x] `declarações`
    - [x] `programa-principal`
- [x] declaração
  - qualificador = external, forward ou public
  - [ ] está feito mas não configo muito, TODO checkar
  - [x] `( [ qualificador ] tipo identificador [ expressão ] )`
    - [ ] `( qualificador tipo identificador expressão  )`
    - [ ] `( tipo identificador expressão  )`
    - [ ] `( qualificador tipo identificador )`
  - [x] `( [ qualificador ] [ var ] identificador expressão )`
    - [ ] `( qualificador var identificador expressão )`
    - [ ] `( qualificador identificador expressão )`
    - [ ] `( var identificador expressão )`
- [x] declarações
  - [x] `declaração ⟨ declaração ⟩`
    - [x] `declarações declaração`
    - [x] `declaração`
- [x] programa-principal
  - [x] `( program ⟨ declaração ⟩ ⟨ instrução ⟩ )` -> `inner_block` = `⟨ declaração ⟩ ⟨ instrução ⟩`
    - [x] `( program declarações instruções )`
    - [x] `( program declarações )`
    - [x] `( program instruções )`
    - [x] `( program )`
- [x] função
  - [x] `( function ( tipo ) ⟨ declaração ⟩ ⟨ instrução ⟩ )` -> `inner_block` = `⟨ declaração ⟩ ⟨ instrução ⟩`
    - [x] `( function ( tipo ) declarações instruções )`
    - [x] `( function ( tipo ) declarações )`
    - [x] `( function ( tipo ) instruções )`
    - [x] `( function ( tipo ) )`
  - [x] `( function ( tipo declarações ) ⟨ declaração ⟩ ⟨ instrução ⟩ )` -> `inner_block` = `⟨ declaração ⟩ ⟨ instrução ⟩`
    - [x] `( function ( tipo declarações ) declarações instruções )`
    - [x] `( function ( tipo declarações ) declarações )`
    - [x] `( function ( tipo declarações ) instruções )`
    - [x] `( function ( tipo declarações ) )`
- [x] tipo
  - [x] `int`
  - [x] `double`
  - [x] `string`
  - [x] `void`
  - [x] `tipo !`
  - [x] `tipo-de-função`
- [x] tipo-de-função
  - [x] `( tipo )`
  - [x] `( tipo ( tipos ) )`
- [x] tipos
  - [x] `tipo ⟨ tipo ⟩`
    - [x] `tipos tipo`
    - [x] `tipo`
- [x] bloco
  - [x] `( block ⟨ declaração ⟩ ⟨ instrução ⟩ )` -> `inner_block` = `⟨ declaração ⟩ ⟨ instrução ⟩`
    - [x] `( block declarações instruções )`
    - [x] `( block declarações )`
    - [x] `( block instruções )`
    - [x] `( block )`
- [x] instrução
  - [x] `expressão`
  - [x] `( print expressões )`
  - [x] `( println expressões )`
  - [x] `( stop [ literal-inteiro ] )`
    - [x] `( stop literal-inteiro )`
    - [x] `( stop )`
  - [x] `( next [ literal-inteiro ] )`
    - [x] `( next literal-inteiro )`
    - [x] `( next )`
  - [x] `( return [ expressão ] )`
    - [x] `( return expressão )`
    - [x] `( return )`
  - [x] `instrução-condicional`
  - [x] `instrução-de-iteração`
  - [x] `bloco`
- [x] instrução-condicional
  - [x] `( if expressão instrução [ instrução ] )`
    - [x] `( if expressão instrução instrução )`
    - [x] `( if expressão instrução )`
- [x] instrução-de-iteração
  - [x] `( loop expressão instrução )`
- [x] instruções
  - [x] `instruções instrução`
  - [x] `instrução`
- [x] expressões
  - [x] `expressão ⟨ expressão ⟩`
    - [x] `expressões expressão`
    - [x] `expressão`
