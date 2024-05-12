# Delivery Zero <!-- omit in toc -->

- [Nodes](#nodes)
- [Notes do Stor](#notes-do-stor)
- [Personal Notes](#personal-notes)
- [ASK](#ask)
- [TODO](#todo)


## Nodes

Find it nodes to implement [here](./nodes.md)

- Cenas no plural = `sequence_node`
- Expressão = `expression_node`
- Condição = `expression_node`
- Instrução = `basic_node`
- Variável = `lvalue_node`
- String = `string`
- Int = `int`

## Notes do Stor

- Comentar as partes do parser que impedem a compilação
  - Estou a assumir que não é para alterar o parser
- Acrescentar os métodos dos novos nós nos `visitors` mas o corpo deles podem estar vazios ou comentados

## Personal Notes

- Neste momento não estou a alterar nada para além dos nodes dentro da pasta `ast/` e dos `visitors`.
  - Visitors files:
    - `postfix_writer.cpp`
    - `type_checker.cpp`
    - `xml_writer.cpp`
  - Ficheiros que eu acho que têm de ser mexidos mas que estou a ignorar:
    - `til_parser.y`
    - `til_scanner.l`

## ASK

- [X] Porque é que dou `#include <cdk/ast/expression_node.h>` e não do basic_node, por exemplo
  - Não estou a fazer include nenhum para além deste
  - Não alterei nada nos `ifs` nem no `evaluation_node`
  - R: só é preciso ter os includes que não deixem aquilo compilar
- [ ] Porque é que é preciso a `_append_newline`? (no `print_node`)

## TODO

- [X] Verificar os `includes`
- [X] Apagar o `programm_node`