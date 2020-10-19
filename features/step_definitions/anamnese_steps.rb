And('Eu estou na pagina de criar uma nova anamnese') do
    visit '/anamneses/new'
end

When ('Eu preencho a atividade trabalho com {string}, descricao da atividade de trabalho com {string}, data de exame clinico {string}, descricao do exame clinico {string}, cardiopatia {string}, cirurgia {string}, descricao da cirurgia {string}, problema de saude {string},dor corporal {string}, descricao de dor corporal {string}, lesao {string}, descricao da lesao {string}, alergia {string}, descricao alergia {string}, fumante {string}, alcolotra {string}, atividade fisica {string}, descricao de atividade fisica {string}, objetivo {string},usuario {string}') do |atividade_trabalho, desc_atividade_trabalho, data_exame_clinico, descricao_exame_clinico, cardiopatia, cirurgia, descricao_cirurgia, problema_saude, dor_corporal, desc_dor_corporal, lesao, desc_lesao, alergia, desc_alergia, fumante, alcolotra, atividade_fisica, desc_atividade_fisica, objetivo, nome_aluno|
  choose(atividade_trabalho)
  fill_in 'anamnese[desc_atividade_trabalho]', :with => desc_atividade_trabalho
  fill_in 'anamnese[data_exame_clinico]', :with => Date.parse(data_exame_clinico)
  fill_in 'anamnese[descricao_exame_clinico]', :with => descricao_exame_clinico
  choose(cardiopatia)
  if cirurgia == 'Não'
    choose("naoCirurgia")
  elsif cirurgia == 'Sim'
    choose("simCirurgia")
  end
  fill_in 'anamnese[descricao_cirurgia]', :with => descricao_cirurgia
  fill_in 'anamnese[problema_saude]', :with => problema_saude
  if dor_corporal == 'Não'
    choose("naoDorCorporal")
  elsif dor_corporal == 'Sim'
    choose("simDorCorporal")
  end
  fill_in 'anamnese[desc_dor_corporal]', :with => desc_dor_corporal
  if lesao == 'Não'
    choose("naoLesao")
  elsif lesao == 'Sim'
    choose("simLesao")
  end
  fill_in 'anamnese[desc_lesao]', :with => desc_lesao
  if alergia == 'Não'
    choose("naoAlergia")
  elsif alergia == 'Sim'
    choose("simAlergia")
  end
  fill_in 'anamnese[desc_alergia]', :with => desc_alergia
  if fumante == 'Não'
    choose("naoFumante")
  elsif fumante == 'Sim'
    choose("simFumante")
  end
  if alcolotra == 'Não'
    choose("naoAlcolotra")
  elsif alcolotra == 'Sim'
    choose("simAlcolotra")
  end
  if atividade_fisica == 'Não'
    choose("naoAtividadeFisica")
  elsif atividade_fisica == 'Sim'
    choose("simAtividadeFisica")
  end
  fill_in 'anamnese[desc_atividade_fisica]', :with => desc_atividade_fisica
  fill_in 'anamnese[objetivo]', :with => objetivo
  select nome_aluno, :from => "Usuario"
end

And('Eu clico em criar nova Anamnese') do
  click_button 'Create'
end

Then('Eu vejo que a anamnese com o nome do aluno {string} foi criada') do |nome|
  visit '/anamneses'
  expect(page).to have_content(nome)
end

Then('Eu vejo uma mensagem de anamnese invalida') do
  assert_selector('div#error_explanation')
end

And('A anamnese com a atividade trabalho {string}, descricao da atividade de trabalho com {string}, data de exame clinico {string}, descricao do exame clinico {string}, cardiopatia {string}, cirurgia {string}, descricao da cirurgia {string}, problema de saude {string},dor corporal {string}, descricao de dor corporal {string}, lesao {string}, descricao da lesao {string}, alergia {string}, descricao alergia {string}, fumante {string}, alcolotra {string}, atividade fisica {string}, descricao de atividade fisica {string}, objetivo {string},usuario {string} existe') do |atividade_trabalho, desc_atividade_trabalho, data_exame_clinico, descricao_exame_clinico, cardiopatia, cirurgia, descricao_cirurgia, problema_saude, dor_corporal, desc_dor_corporal, lesao, desc_lesao, alergia, desc_alergia, fumante, alcolotra, atividade_fisica, desc_atividade_fisica, objetivo, nome_aluno|
  visit '/anamneses/new'
  choose(atividade_trabalho)
  fill_in 'anamnese[desc_atividade_trabalho]', :with => desc_atividade_trabalho
  fill_in 'anamnese[data_exame_clinico]', :with => Date.parse(data_exame_clinico)
  fill_in 'anamnese[descricao_exame_clinico]', :with => descricao_exame_clinico
  choose(cardiopatia)
  if cirurgia == 'Não'
    choose("naoCirurgia")
  elsif cirurgia == 'Sim'
    choose("simCirurgia")
  end
  fill_in 'anamnese[descricao_cirurgia]', :with => descricao_cirurgia
  fill_in 'anamnese[problema_saude]', :with => problema_saude
  if dor_corporal == 'Não'
    choose("naoDorCorporal")
  elsif dor_corporal == 'Sim'
    choose("simDorCorporal")
  end
  fill_in 'anamnese[desc_dor_corporal]', :with => desc_dor_corporal
  if lesao == 'Não'
    choose("naoLesao")
  elsif lesao == 'Sim'
    choose("simLesao")
  end
  fill_in 'anamnese[desc_lesao]', :with => desc_lesao
  if alergia == 'Não'
    choose("naoAlergia")
  elsif alergia == 'Sim'
    choose("simAlergia")
  end
  fill_in 'anamnese[desc_alergia]', :with => desc_alergia
  if fumante == 'Não'
    choose("naoFumante")
  elsif fumante == 'Sim'
    choose("simFumante")
  end
  if alcolotra == 'Não'
    choose("naoAlcolotra")
  elsif alcolotra == 'Sim'
    choose("simAlcolotra")
  end
  if atividade_fisica == 'Não'
    choose("naoAtividadeFisica")
  elsif atividade_fisica == 'Sim'
    choose("simAtividadeFisica")
  end
  fill_in 'anamnese[desc_atividade_fisica]', :with => desc_atividade_fisica
  fill_in 'anamnese[objetivo]', :with => objetivo
  select nome_aluno, :from => "Usuario"
  click_button 'Create'
end

And('Eu estou na pagina de anamneses') do
  visit '/anamneses'
end

When('Eu clico em remover anamnese com nome do aluno {string}') do |nome|
  visit '/anamneses'
  click_link "d-#{nome}"
end

Then('Eu vejo que a anamnese com o aluno {string} nao se encontra mais entre as anamneses listadas') do |nome|
  expect(page).to have_no_content(nome)
end

When('Eu clico em editar anamnese com nome do aluno {string}') do |nome|
  visit '/anamneses'
  click_link "e-#{nome}"
end

And('Eu seleciono a opcao {string} de cardiopatia') do |cardiopatia|
  choose(cardiopatia)
end

And('Eu clico no botao de atualizar anamnese') do
  click_button 'Update'
end