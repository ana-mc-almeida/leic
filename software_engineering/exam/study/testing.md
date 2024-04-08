# Testing <!-- omit in toc -->

- [Stages of Testing](#stages-of-testing)
- [Testing Strategies](#testing-strategies)
- [Automated Test Components](#automated-test-components)
- [Test doubles](#test-doubles)
- [Code Coverage](#code-coverage)
- [Object Testing](#object-testing)
  - [Non-modal vs modal classes](#non-modal-vs-modal-classes)
- [Component Testing](#component-testing)
  - [Approaches](#approaches)


## Stages of Testing

- **Development testing:**
  - Programadores
  - O código é testado durante o seu desenvolvimento para se encontrarem bugs e defeitos
- **Release Testing:**
  - Uma equipa de testes (QA engineers)
  - Testa o software antes de ser lançado para os utilizadores
- **User Testing:**
  - Utilizadores
  - Os utilizadores testam o software no seu ambiente final

## Testing Strategies

- **Black box testing**:
  - Testar com base na especificação
- **White box testing**:
  - Testar com base na implementação
- **Partition Testing:**
  - Identifcar conjuntos de inputs que podem desencadear comportamentos semelhantes
    - Dentro do valor permitido
    - Fora do valor permitido
    - No limiar
  - Escolher apenas um elemento de cada grupo
<details><summary> Exemplo: </summary>

```
if (daysLate <= MAX_FINE_PERIOD)
    fine = daysLate * DAILY_FINE
else
    fine = MAX_FINE 
```

- Dentro do valor permitido
  - entre 0 e MAX_FINE_PERIOD
- Fora do valor permitido
  - MAX_FINE_PERIOD + 50
  - 0 - 20
- No limiar
  - MAX_FINE_PERIOD
  - MAX_FINE_PERIOD + 1
  - 0
  - 0 - 1
</details>

- **Unit Testing:**
  - Testar os componentes isolados uns dos outros
- **Automated Testing**:
  - Os testes devem ser automáticos 
  - para que possam correr sempre que são feitas alterações ao código, sem ser preciso a intervenção manual
- **Guideline-Based Testing:**
  - Tipos de testes que já se sabem que são eficazes a identificar erros
<details><summary> Exemplos: </summary>

- Inputs que forcem o sistema a gerar erros
- Inputs que causem overflow
- Repetir o mesmo input várias vezes
- Forçar resultados bué pequenos
</details> 

## Automated Test Components

- Setup part
  - Inicializar o sistema e os valores necessários para o test case
  - `given:`
- Call part
  - Onde se chama o objeto ou metodo a ser testado
  - `when:`
- Assertion part
  - Onde se verifica se o resultado final é o esperado
  - `then`
- OR call and assertation parts
  - When testing multiple values to the same call
  - `expect:` with `where`

## Test doubles

Nome dado a qualquer objeto que está a ser utilizado no lugar de um objeto real (para um teste em específico)

Podem ser:
- Dummy objects:
  - Quando não são, de facot, utiizados, apenas servem para preenher listas de paramentros necessários mas não utilizados
- Fake objets:
  - São utilizados na implementação, mas utilizam algum outro caminho para que seja mais fácil utiliza-los nos testes
- Stubs:
  - Fornecem respostas específicas para as chamadas no testes, para evitar que estas chamadas saiam do testes (e não influenciar com nada fora)
- Spies:
  - Stubs que guardam informação de como foram chamados
- Mocks:
  - Tem espectativas especificas de como é que vão ser utilizados.
  
Vantagens:
- Isolate units
- Reduzir a dependencia entre equipas
- Reduzir os custos do stup dos testes (base de dados necessária)
- Simular casos dificeis de gerar

## Code Coverage

Percentagem (calculada dependo de vários fatores) de código que corre quando se executam os testes

Tipos de coverage:
- **Statement Coverage:**
  - Cada linha (statement) é executada pelo menos uma vez
- **Branch Coverange**:
  - Cada condição é testada sendo `true` e `false`
- **Condition Coverage**:
  - Cada _sub-expressão_ da condição é testada como sendo `true` e `false`
- **Path Coverage:** (ou Structure Basis Testing)
  - Cada caminho (path) independente é testado
  - Número de paths independentes = número de decisões + 1

> Ver exemplos a partir do slide 14 da [Lecture 4](../lectures/Lecture%2004%20-%20blue.pdf)

## Object Testing

Testa a sequencia dos métodos

### Non-modal vs modal classes

O estado interno da aplicação tem impacto nos resultados os métodos chamados?
- Se sim, **modal**
- Se não, **non-modal**

## Component Testing

Testar a interação entre interfaces de diferentes componenetes e classes.

Só depois se terem feito unit testes e [object testes](#object-testing)

Erros de interface podem ser:
- **Interface misuse:**
  - Um componente chama outro componente de forma errada (parametros na ordem errada, por exemplo)
- **Interface misunderstanding**:
  - Um componente que chama outro componente, assume coisas erradas sobre esse componente (por exemplo, se deteta falhas)
- **Timing Errors:**
  - Os dois componentes que estão a interagir têm velocidades diferentes e acaba por se aceder a informação out-of-date

### Approaches

- **All together:** (big bang integration)
  - Quando há dependencias entre as unit
- **Incremental:** (bottom-up, top-down or sandwich integration aka as duas juntas)
  - Quando é dificil encontrar o problemas por detrás de um erro