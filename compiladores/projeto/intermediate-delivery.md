# Intermediate Delivery <!-- omit in toc -->

## TOC <!-- omit in toc -->

- [Usefull links](#usefull-links)
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

## Notes to Implement

1. - [ ] [address_of_node](#address_of_node-implemented)
2. - [ ] [alloc_node](#alloc_node-implemented)
3. - [ ] [block_node](#block_node-implemented)
4. - [ ] [declaration_node](#declaration_node-implemented)
5. - [ ] [evaluation_node](#evaluation_node-already-done)
6. - [ ] [function_call_node](#function_call_node-implemented)
7. - [ ] [function_definition_node](#function_definition_node-implemented)
8. - [ ] [if_else_node](#if_else_node-already-done)
9. - [ ] [if_node](#if_node-already-done)
10. - [ ] [read_node](#read_node-implemented)
11. - [ ] [next_node](#next_node-implemented)
12. - [ ] [null_node](#null_node-implemented)
13. - [ ] [index_node](#index_node-implemented)
14. - [ ] [print_node](#print_node-implemented)
15. - [ ] [return_node](#return_node-implemented)
16. - [ ] [sizeof_node](#sizeof_node-implemented)
17. - [ ] [stop_node](#stop_node-implemented)
18. - [ ] [loop_node](#loop_node-implemented)

## Palavras-Chave

- Tipos
  - [ ] int
  - [ ] double
  - [ ] string
  - [ ] void
- Declarações
  - [ ] external = antigo foreign
  - [ ] forward
  - [ ] public
  - [ ] var = antigo auto
- Instruções
  - [ ] block
  - [ ] if
  - [ ] loop = antigo while
  - [ ] stop
  - [ ] next
  - [ ] return
  - [ ] print
  - [ ] println
- Expressões
  - [ ] read
  - [ ] null
  - [ ] set
  - [ ] index
  - [ ] objects
  - [ ] sizeof
  - [ ] function
- [ ] program

### Tipos de Dados

- [ ] Inteiros `int`
- [ ] Reais `double`
- [ ] Strings
- [ ] Pointers `!`

## Gramática

`[` e `]` = opcional
`<` e `>` = zero ou mais vezes

- [ ] ficheiro
  - [ ] `⟨  declaração ⟩ [ programa-principal ]`
    - [ ] `declarações programa-principal`
    - [ ] `declarações`
    - [ ] `programa-principal`
- [ ] declaração
  - [ ] `( [ qualificador ] tipo identificador [ expressão ] )`
    - [ ] `( qualificador tipo identificador expressão  )`
    - [ ] `( tipo identificador expressão  )`
    - [ ] `( qualificador tipo identificador )`
  - [ ] `( [ qualificador ] [ var ] identificador expressão )`
    - [ ] `( qualificador var identificador expressão )`
    - [ ] `( qualificador identificador expressão )`
    - [ ] `( var identificador expressão )`
- [ ] declarações
  - [ ] `declaração ⟨ declaração ⟩`
    - [ ] `declarações declaração`
    - [ ] `declaração`
- [ ] programa-principal
  - [ ] `( program ⟨ declaração ⟩ ⟨ instrução ⟩ )`
    - [ ] `( program declarações instruções )`
    - [ ] `( program declarações )`
    - [ ] `( program instruções )`
    - [ ] `( program )`
- [ ] função
  - [ ] `( function ( tipo ) ⟨ declaração ⟩ ⟨ instrução ⟩ )`
    - [ ] `( function ( tipo ) declarações instruções )`
    - [ ] `( function ( tipo ) declarações )`
    - [ ] `( function ( tipo ) instruções )`
  - [ ] `( function ( tipo declarações ) ⟨ declaração ⟩ ⟨ instrução ⟩ )`
    - [ ] `( function ( tipo declarações ) declarações instruções )`
    - [ ] `( function ( tipo declarações ) declarações )`
    - [ ] `( function ( tipo declarações ) instruções )`
- [ ] tipo
  - [ ] `int`
  - [ ] `double`
  - [ ] `string`
  - [ ] `void`
  - [ ] `tipo !`
  - [ ] `tipo-de-função`
- [ ] tipo-de-função
  - [ ] `( tipo )`
  - [ ] `( tipo ( tipos ) )`
- [ ] tipos
  - [ ] `tipo ⟨ tipo ⟩`
    - [ ] `tipos tipo`
    - [ ] `tipo`
- [ ] bloco
  - [ ] `( block ⟨ declaração ⟩ ⟨ instrução ⟩ )`
    - [ ] `( block declarações instruções )`
    - [ ] `( block declarações )`
    - [ ] `( block instruções )`
- [ ] instrução
  - [ ] `expressão`
  - [ ] `( print expressões )`
  - [ ] `( println expressões )`
  - [ ] `( stop [ literal-inteiro ] )`
    - [ ] `( stop literal-inteiro )`
    - [ ] `( stop )`
  - [ ] `( next [ literal-inteiro ] )`
    - [ ] `( next literal-inteiro )`
    - [ ] `( next )`
  - [ ] `( return [ expressão ] )`
    - [ ] `( return expressão )`
    - [ ] `( return )`
  - [ ] `instrução-condicional`
  - [ ] `instrução-de-iteração`
  - [ ] `bloco`
- [ ] instrução-condicional
  - [ ] `( if expressão instrução [ instrução ] )`
    - [ ] `( if expressão instrução instrução )`
    - [ ] `( if expressão instrução )`
- [ ] instrução-de-iteração
  - [ ] `( loop expressão instrução )`
- [ ] instruções
  - [ ] `instruções instrução`
  - [ ] `instrução`
- [ ] expressões
  - [ ] `expressão ⟨ expressão ⟩`
    - [ ] `expressões expressão`
    - [ ] `expressão`
