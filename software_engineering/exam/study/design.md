# Software Design <!-- omit in toc -->

- [Design Patterns](#design-patterns)
  - [Command](#command)
  - [The Template Method](#the-template-method)
  - [Composite Design Pattern](#composite-design-pattern)
  - [State Pattern](#state-pattern)
- [Design Principles](#design-principles)
  - [**S**ingle Responsibility Principle](#single-responsibility-principle)
  - [**O**pen Close Principle](#open-close-principle)
  - [**L**iskov's Substitution Principle](#liskovs-substitution-principle)
  - [**I**nterface Segregation Principle](#interface-segregation-principle)
  - [**D**ependency Inversion Principle](#dependency-inversion-principle)


Qualidades de um bom design:
- High Cohesion
  - single responsibility within a module
- Low Coupling (ligação)
  - reduces dependencies between modules

## Design Patterns

### Command
([wiki do professor David Matos](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Comando_(padr%C3%A3o_de_desenho)))
  - Encapsula os pedidos num objeto.
  - Ligação
    - o invocador é independente dos comandos em particular
    - o cliente conhece o comando específico (alta ligação)
    - fácil de extender para novos comandos
  - Coesão
    - Cada comando contem as operações associadas ao mesmo (alta coesão)
### The Template Method
([wiki do professor David Matos](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Template_Method_Pattern_(padr%C3%A3o_de_desenho)))
  - Define o esqueleto do algoritmo, deixando que alguns passos sejam da subclasse.
  - Assim, as subclasses podem alterar algumas partes do algoritmo, sem alterarem a sua estrutura
  - Ligação:
    - Entre a superclasse e as sub-classes
  - Coesão:
    - Para se alterar a estrutura do algortimo, só é necessário alterar a superclasse
### Composite Design Pattern
([wiki do professor David Matos](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/Composite_(padr%C3%A3o_de_desenho)))
  - Conjunto de objetos que são tratadis como se fossem só uma instancia do mesmo tipo de objeto
  - Ligação
    - O cliente depende de uma interface que é comum a todos os membros
    - Os membros usam a mesma interface quando interagem entre si
    - Facilmente se criam novos tipos de membro
  - Coesão
    - Cada membro contém as responsabilidades associadas à sua função
### State Pattern
([Wiki Professor David Matos](https://web.tecnico.ulisboa.pt/~david.matos/w/pt/index.php/State_Pattern_(padr%C3%A3o_de_desenho)))
  - Permite que o objeto altere o seu comportamento, quando o seu estado muda.
  - Ligação
    - O contexto está desacoplado do estado, onde o estado encapsula a sua implementação
  - Coesão
    - Uma operação está separada em vários estados
    - Elevada coesão nas responsabilidades de cada estado

## Design Principles

Segue o acrónimo SOLID

### **S**ingle Responsibility Principle

- Cada módulo só deve ter uma razão para ser alterado
- Coesão:
  - Elevada

### **O**pen Close Principle

- Os módulos devem estar abertos (open) a extensões mas fechados (close) para modifications
- Ligação
  - Pouco ligados dos clientes
- Coesão
  - Elevada

### **L**iskov's Substitution Principle

- Tipos derivados (subclasses) devem ser completamente substituiveis pelos seus tipos base (superclass)
- Ligação:
  - Baixa porque as extensões preservam a abstração

### **I**nterface Segregation Principle

- Clientes não devem ser obrigados a depender de interfaces que não utilizam
- Ligação:
  - Baixa pois há poucas dependencias

### **D**ependency Inversion Principle

- Módulos de alto nível não devem depender de módulos de baixo nível
- Devem depender os dois de abstrações.
- Detalhes devem depender de abstrações
- Ligação:
  - Baixa pois depende de abstrações