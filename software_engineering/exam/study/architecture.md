# Software Architecture <!-- omit in toc -->

- [Architectural Views](#architectural-views)
  - [Logical View](#logical-view)
  - [Pysical View](#pysical-view)
  - [Development View](#development-view)
  - [Process View](#process-view)
- [Architectural Patterns](#architectural-patterns)
  - [Model-view-controller](#model-view-controller)
  - [Layered](#layered)
  - [Repository](#repository)
  - [Client-server](#client-server)
  - [Piper-and-filter](#piper-and-filter)
- [Applications Architectures](#applications-architectures)

## Architectural Views

### Logical View

Descreve a estrutra com uma prespectiva de alto nível (bastante abstração)

### Pysical View

Descreve os elementos físicos do sistema tais como o hardware ou a configuração da rede.
> Para os engenheiros de sistemas

### Development View

Descreve como o sistema deve ser desenvolvido tal como as tecnologias a serem utilizadas ou os componentes a serem implementados 
> Para os programadores

### Process View

Descreve como é que o sistema é executado, explicitanto os processos e a threads.
Tem como objetivo ajudar a melhor o desempenho da aplicação.

## Architectural Patterns

### Model-view-controller

Literal usar os `models`, `views` e `controllers`
> Usado no projeto

### Layered

Organizar a aplicação em diferentes camadas
> Usado no projeto

### Repository

Todos os dados do sistema são geridos num repositório central que é acessível a todos os componentes do sistema. Os componentes não interagem entre si diretamente, apenas através do repositório.
> Usado no projeto

### Client-server

A funcionalidade do sistema está organizada em serviços, com cada serviço fornecido por um servidor diferente. Os Clientes são utilizadores destes serviços e acedem a servidores para os utilizar.
> Usado no projeto

### Piper-and-filter

O processamento da informação no sistema é organizado de forma a que cada componente (filter) seja discreto e faça um tipo de transformação da informação. A informação circula (como num pipe) de um componente para outro para ser processada.

## Applications Architectures

(skip, sorry)