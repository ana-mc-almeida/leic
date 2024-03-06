


### Ask to the group

- [ ] Como dividimos as branchs
- [ ] Começamos por fazer os testes ou as implementações?


### Notes from teacher

- [ ] mocks
- [ ] serviços guardar na base de dados
- [ ] adicionar tag de serviço para o string boot reconhecer
- [ ] Dto's usados nos serivços

- tag restController
- principal -> info do user que fez o request
- hasPermition -> provavelmente é preciso alterar
- hasRole -> já deve estar tudo ok

- Testes
  - springboottest criar o mock para o server
  - limpar a base de dados entre cada teste do webService
  - webService -> quebrar pelo menos uma invariante e testar com roles diferentes


### Ask to teacher
- [ ] devemos verificar se recebe instituição e voluntário?
- [ ] temos de verificar se o id não é null ? test domain
- [ ] Quão exautivos devem ser os testes? Devemos testar os casos limite todos? exemplo: ser a primeira review do voluntário
- [ ] quando estamos a dar review do código é relevante o código estar formatado?
- [ ] nos tests dos services e webService temos de retestar as cenas do domain?