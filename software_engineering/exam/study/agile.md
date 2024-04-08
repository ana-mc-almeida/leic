# Agile Software Engineering <!-- omit in toc -->

Agile Software Engineering tem como objetivo ser **rápido** a efetuar as alterações necessárias no software, minimizando as despesas do desenvolvimento.

- [Agile Methods](#agile-methods)
- [Agile Development Techniques:](#agile-development-techniques)
- [Scrum](#scrum)
  - [Scrum Roles](#scrum-roles)
  - [Scrum Practices](#scrum-practices)
  - [Sprint Activities](#sprint-activities)
- [Testing](#testing)
  - [Validation VS Verification](#validation-vs-verification)
  - [Inspetions VS Testing](#inspetions-vs-testing)

## Agile Methods

- Plan-driven development: 
  - para serviços que devem ser mantidos por vários anos e que são geridos por equipas que estão geograficamente dispersas
  - O projeto é detalhadamente planeado
  - é caro e lento
- **Incremental Development:**
  - Feature-oriented
  - Os features são ordenados por ordem de prioridade e os mais importantes são implementados primeiro
- **Customer involvement:**
  - o cliente segue de perto o desenvolvimento do projeto
  - O objetivo de especificarem e priorizarem os requesitos do software, para além de irem avaliando os progressos que vão sendo feitos
- **Embrace change**:
  - Estar à espera que os requesitos do software sejam alterados
  - Estar preparado para ser fácil de realizar essas alterações
- **Incremental Delivery**:
  - O software vai sendo incrementado
  - É o cliente que especifica que features devem ser incluidas em cada incrementação
- **Maintain Simplicity**:
  - Manter o software e o processo de desenvolvimento, o mais simples possivel
  - Eliminar todas as complexidades, sempre que possivel
- **People, not process:**
  - Cada membro da equipa deve desenvolver a sua maneira de trabalho (sem se quebrar o processo)

## Agile Development Techniques:

- **Incremental Planning:**
  - User stories
    - As a \<type of user\> i want \<some goal\> so that \<some reason\>
  - Os requesitos de cada inrementação estão estabelecidos em conversas com o cliente e determinados quando são implementos consoante a sua prioridade e o tempo de desenvolvimento disponivel
- **Small Releases:**
  - Começa se por se desenvolver e lançar o essencial para o funcionamento do produto
  - Os lançamentos das incrementações seguintes são sempre frequentes
- **Test first development:**
  - Escrever primeiro os testes, antes do código
  - Ajuda a especificar o que é necessário que o código faça
  - O código novo não deve quebrar o que já foi anteriormente implementado
- **Continuos Integration:**
  - Assim que uma nova funcionalidade está implementada, deve ser integrada no projeto e uma nova versão deve ser lançada.
  - Os testes devem correr automaticamente (e tem de passar) antes da nova versão ser aceite
- **Refactoring:**
  - Melhorar a estrutra, legibilidade, eficiencia e segurança
  - Sempre que um programador encontrar código a ser melhorado, deve faze lo
- **Pair programming:**
  - Trablho a pares permite que cada um verifique o trablho do outro e ajuda quando há questões

## Scrum

é um método Agile que facilita o planeamento e organização do projeto.

- Não é necessário que nenhuma [tecnica agile](#agile-development-techniques) seja seguida em específico.
  - No entanto, **test automation** e **continuos integration** devem ser sempre utilizadas
- Uma equipa deve ter entre 5 a 8 pessoas

### Scrum Roles

- **Product Owner**:
  - Identifica os features, requesitos e prioridades do desenvolvimento
  - Garante que a equipa de desenvolvimento está focada e contruir o produto em si, ao invés de se distrair com a tecnologia a ser utilizada
- **ScrumMaster**:
  - Orienta a equipa para que o método scrum seja utilizado

### Scrum Practices

- **Product backlog:**
  - To-do list das features a serem implementadas
  - Deve ser revista e atualizda antes de cada sprint
- Timeboxed **sprints**:
  - Periodos de tempo fixos onde certos items do backlog devem ser implementados
  - 2 a 4 semanas
  - Durante um sprint há reuniões diárias (scrums) para se atualizar o progresso do trabalho
- **Sprint backlog**:
  - To-do list das features a serem implementadas _durante aquele timeboxed sprint_
- **Self-organized teams**:
  - Cada equipa toma as suas próprias decisões

### Sprint Activities

- **Sprint Planning**
  - Selecionar as features a serem implementadas naquele sprint e criar o sprint backlog
- **Sprint execution**
  - Implementar os items do sprint backlog
  - Se não for possivel que todos os items sejam implementados **não se estede a sprint** e, ao invés disso, os items voltam para o product backlog
- **Sprint Review**
  - No final de cada sprint, rever o que correu bem e mal durante a sprint para se melhorar na próxima

## Testing

- **Validation Testing**:
  - Validar que o software cumpre os requisitos
- **Defect testing:**
  - Descobrir erros no software, que quebrem os requesitos do projeto

### Validation VS Verification

- Verification
  - "Estamos a construir bem o produto?"
- Validation
  - "Estamos a construir o produto certo?"

### Inspetions VS Testing

- Testing:
  - System prototype
- Inspection:
  - Todo o processo de criação do projeto