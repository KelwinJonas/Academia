Feature: Anamnese
  As a usuario administrador ou professor do sistema
  I want to criar Anamnese, editar Anamnese, deletar Anamnese e visualizar Anamnese
  So that eu possa controlar os Anamnese dos alunos da academia

  Scenario: Criando novo Anamnese para um aluno
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de criar uma nova anamnese
    When Eu preencho a atividade trabalho com 'Ficar sentado(a)', descricao da atividade de trabalho com 'Programador', data de exame clinico '2020-01-10', descricao do exame clinico 'Exame de Sangue', cardiopatia 'Nenhum', cirurgia 'Não', descricao da cirurgia '', problema de saude '',dor corporal 'Sim', descricao de dor corporal 'Joelho', lesao 'Sim', descricao da lesao 'Desgaste por uso excessivo da articulacao', alergia 'Não', descricao alergia '', fumante 'Não', alcolotra 'Não', atividade fisica 'Não', descricao de atividade fisica '', objetivo 'Barriga tanquinho',usuario 'Nathalia'
    And Eu clico em criar nova Anamnese
    Then Eu vejo que a anamnese com o nome do aluno 'Nathalia' foi criada

  Scenario: Criando novo usuario com campo de cirurgia vazio
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de criar uma nova anamnese
    When Eu preencho a atividade trabalho com 'Ficar sentado(a)', descricao da atividade de trabalho com 'Programador', data de exame clinico '2020-01-10', descricao do exame clinico 'Exame de Sangue', cardiopatia 'Nenhum', cirurgia '', descricao da cirurgia '', problema de saude '',dor corporal 'Sim', descricao de dor corporal 'Joelho', lesao 'Sim', descricao da lesao 'Desgaste por uso excessivo da articulacao', alergia 'Não', descricao alergia '', fumante 'Não', alcolotra 'Não', atividade fisica 'Não', descricao de atividade fisica '', objetivo 'Barriga tanquinho',usuario 'Nathalia'
    And Eu clico em criar nova Anamnese
    Then Eu vejo uma mensagem de anamnese invalida

  Scenario: Criando novo usuario com campo de fumante vazio
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And Eu estou na pagina de criar uma nova anamnese
    When Eu preencho a atividade trabalho com 'Ficar sentado(a)', descricao da atividade de trabalho com 'Programador', data de exame clinico '2020-01-10', descricao do exame clinico 'Exame de Sangue', cardiopatia 'Nenhum', cirurgia 'Não', descricao da cirurgia '', problema de saude '',dor corporal 'Sim', descricao de dor corporal 'Joelho', lesao 'Sim', descricao da lesao 'Desgaste por uso excessivo da articulacao', alergia 'Não', descricao alergia '', fumante '', alcolotra 'Não', atividade fisica 'Não', descricao de atividade fisica '', objetivo 'Barriga tanquinho',usuario 'Nathalia'
    And Eu clico em criar nova Anamnese
    Then Eu vejo uma mensagem de anamnese invalida

  Scenario: Removendo uma anamnese existente
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And A anamnese com a atividade trabalho 'Ficar sentado(a)', descricao da atividade de trabalho com 'Programador', data de exame clinico '2020-01-10', descricao do exame clinico 'Exame de Sangue', cardiopatia 'Nenhum', cirurgia 'Não', descricao da cirurgia '', problema de saude '',dor corporal 'Sim', descricao de dor corporal 'Joelho', lesao 'Sim', descricao da lesao 'Desgaste por uso excessivo da articulacao', alergia 'Não', descricao alergia '', fumante 'Não', alcolotra 'Não', atividade fisica 'Não', descricao de atividade fisica '', objetivo 'Barriga tanquinho',usuario 'Nathalia' existe
    And Eu estou na pagina de anamneses
    When Eu clico em remover anamnese com nome do aluno 'Nathalia'
    Then Eu vejo que a anamnese com o aluno 'Nathalia' nao se encontra mais entre as anamneses listadas

  Scenario: Editando uma anamnese existente com o nova cardiopatia
    Given Um usuario administrador existe
    And Um aluno de nome 'Nathalia', email 'nathalia@example.com', telefone '877777777', data_nascimento '1999-09-09', password 'nathalia123', password_confirmation 'nathalia123' e tipo '0' existe
    And Eu estou logado como administrador com email 'admin@example.com' e senha 'password'
    And A anamnese com a atividade trabalho 'Ficar sentado(a)', descricao da atividade de trabalho com 'Programador', data de exame clinico '2020-01-10', descricao do exame clinico 'Exame de Sangue', cardiopatia 'Nenhum', cirurgia 'Não', descricao da cirurgia '', problema de saude '',dor corporal 'Sim', descricao de dor corporal 'Joelho', lesao 'Sim', descricao da lesao 'Desgaste por uso excessivo da articulacao', alergia 'Não', descricao alergia '', fumante 'Não', alcolotra 'Não', atividade fisica 'Não', descricao de atividade fisica '', objetivo 'Barriga tanquinho',usuario 'Nathalia' existe
    And Eu estou na pagina de anamneses
    When Eu clico em editar anamnese com nome do aluno 'Nathalia'
    And Eu seleciono a opcao 'Pai / Mãe' de cardiopatia
    And Eu clico no botao de atualizar anamnese
    Then Eu vejo uma mensagem de 'Anamnese editada com sucesso.'
