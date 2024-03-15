# Project Notes

- [First submission](#first-submission)
- [Second submission](#Second-submission)

## First submission

### Ask to the group

- [ ] Como dividimos as branchs
- [ ] Começamos por fazer os testes ou as implementações?


### Notes from teacher

- mocks
- serviços guardar na base de dados
- adicionar tag de serviço para o string boot reconhecer
- Dto's usados nos serivços

- tag restController
- principal -> info do user que fez o request
- hasPermition -> provavelmente é preciso alterar
- hasRole -> já deve estar tudo ok

- Testes
  - springboottest criar o mock para o server
  - limpar a base de dados entre cada teste do webService
  - webService -> quebrar pelo menos uma invariante e testar com roles diferentes

### Ask to teacher
- [X] devemos verificar se recebe instituição e voluntário?
  - No enunciado diz "Os testes de domínio consideram que institution e volunteer contêm valores válidos."
- [ ] temos de verificar se o id não é null ? test domain
- [X] Quão exautivos devem ser os testes? Devemos testar os casos limite todos? exemplo: ser a primeira review do voluntário
  - só o que pede no enunciado
- [X] quando estamos a dar review do código é relevante o código estar formatado?
  - Sim, para mostrar que lemos o código :)
- [X] nos tests dos services e webService temos de retestar as cenas do domain?
  - Só temos de testar o que está no enunciado
- [X] Podemos dar commits diretos para a main? Exemplo: dar fix de alguma coisa.
  - [X] Se não, podemos criar uma branch que seja para dar fix nessas coisas e depois dar rebase para a main?
    - Não, usar a mesma branch que já existe
  - [X] Para adicionar mos o md file pode ser direto na main?
    - Sim :)
- [X] A `testCoverage` é relevante? O stor tinha dito que não mas pedem para o md file
  - Não é relevante, é só para sabermos como fazer as cenas

### TODO
- [X] Dar fix na `reviewDate`
- [X] Não estamos a testar as `invocations` no nosso domain test
- [X] Comentários do createAssessment
- [X] Remove `PermiteAll`

## Second submition

### Notes 

- Models tem de ter os mesmo atributos que o Dto
- Css não é muito necessário
- Usar o código deles