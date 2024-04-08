# Patterns of Enterprise Application Architecture (PEAA) <!-- omit in toc -->

- [Domain Logic Patterns](#domain-logic-patterns)
  - [Transaction Script](#transaction-script)
  - [Domain Model](#domain-model)
  - [Service Layer](#service-layer)
  - [Table Module](#table-module)
- [Data Source Architectural Patterns](#data-source-architectural-patterns)
  - [Table Data Gateway](#table-data-gateway)
  - [Row Data Gateway](#row-data-gateway)
  - [Active Record](#active-record)
  - [Data Mapper](#data-mapper)
- [Object-Relational Behavioral Patterns](#object-relational-behavioral-patterns)
  - [Unit of Work](#unit-of-work)
  - [Identity Map](#identity-map)
  - [Lazy Load](#lazy-load)
- [Object-Relational Structural Patterns](#object-relational-structural-patterns)
  - [Identity ﬁeld](#identity-ﬁeld)
  - [Foreign key mapping](#foreign-key-mapping)
  - [Association tabel mapping](#association-tabel-mapping)
  - [Single table inheritance](#single-table-inheritance)
  - [Class table inheritance](#class-table-inheritance)
  - [Concrete tabel inheritance](#concrete-tabel-inheritance)
  - [Dependent mapping](#dependent-mapping)
  - [Embedded value](#embedded-value)
  - [Serializable LOB](#serializable-lob)
  - [Inheritance Mappers](#inheritance-mappers)
- [Distribution Patterns](#distribution-patterns)
  - [Remote Façade](#remote-façade)
  - [Data Transfer Object](#data-transfer-object)
- [Web Presentation Patterns](#web-presentation-patterns)
  - [Model View Controller](#model-view-controller)
  - [Template View](#template-view)
  - [Front Controller](#front-controller)


## Domain Logic Patterns

### Transaction Script

- Um procedimento por cada caso
- Acesso direto à base de dados (ou uma camada mega fina de abstração)
- Usa [ResultSets](#table-data-gateway) diretamente ou [Anemic Domain](#row-data-gateway)

### Domain Model

- Cada objeto representa uma entidade do mundo real

### Service Layer

Define os limites da aplicação com uma camada de serviços que estabelece um set de operações disponíveis e define a resposta da aplicação para cada operação.

### Table Module 

Organizado em tabelas. Cada tabela ou conjunto de tabelas tem seu próprio módulo, que contém toda a lógica relacionada a essa tabela. Isso inclui operações como inserção, atualização, exclusão e recuperação de dados.

## Data Source Architectural Patterns

### Table Data Gateway

- Um objeto que serve de gateway de uma **tabela** da base de dados.
- Esta classe é responsável por fornecer métodos para realizar operações CRUD (Create, Read, Update, Delete) na tabela correspondente. 
- Uma instance tem **todas as linhas** da tabela.

### Row Data Gateway

- Um objeto que serve de gateway de um **único registo** na tabela da base de dados.
- Uma instancia **por linha** da tabela.

### Active Record

- Um objeto representa uma entrada na tabela na base de dados e encapsula o acesso à base de dados.
- Contém atributos que mapeiam para as tabelas e métodos CRUD para lidar com as mesmas

### Data Mapper

- **Camada** de mappers que transfere a informação entre objetos e a base de dados, mantendo-os independentes entre si e do próprio mapper
- Separa a lógica de manutenção dos dados da persistência dos mesmos.

## Object-Relational Behavioral Patterns

### Unit of Work

- Mantém uma lista de objetos afetados pela business transaction e coordena a escrita de alterações e problemas de concorrencia
- Keep track de:
  - New objects
  - Deleted objects
  - Updated objects (dirty)
  - Read objects (clean)

### Identity Map

- Garante que cada objeto dentro da aplicação é único.

### Lazy Load

- Um objeto pode não conter toda a informação que precisas mas sabe como obte-la

## Object-Relational Structural Patterns

### Identity ﬁeld

- Apenas guarda a **chave primária**
  
### Foreign key mapping

- Usa uma Foreign key

### Association tabel mapping

- Cria uma **Association tabel**

### Single table inheritance

- **all classes** in the inheritance hierarchy are mapped to a single database table, with a discriminator column indicating the type of each row.

### Class table inheritance

- **each class** in the inheritance hierarchy is mapped to its **own database table**, with each table containing only the attributes specific to that class.

### Concrete tabel inheritance

- Tables Store Data Specific to Each Concrete Subclass 

### Dependent mapping
### Embedded value
### Serializable LOB
### Inheritance Mappers


## Distribution Patterns

### Remote Façade

- Providência uma interface simplificada e unificada para acessar a funcionalidades de um sistema complexo e distribuído. 
- Melhora  a eficiência de uma rede.

### Data Transfer Object

- Um objeto junta e carrega informações entre processos
- Reduz o número de métodos chamados

## Web Presentation Patterns

### Model View Controller

- Divide a interface do utilizador em 3 papeis diferentes:
  - Model
  - View
  - Controller

### Template View

- renders information into HTML by embedding markers in an HTML page

### Front Controller

- a controller that handles all requests for a Web site