# coding: utf-8

require 'spec_helper'

feature 'gerenciar medico' do

  scenario 'incluir medico' do # , :js => true  do

    especialidade = FactoryGirl.create(:especialidade, :tipo => 'Pediatra')

    visit new_medico_path

    preencher_e_verificar_medico

    

  end

  scenario 'alterar medico' do #, :js => true  do

    especialidade = FactoryGirl.create(:especialidade, :tipo => 'Pediatra')

    medico = FactoryGirl.create(:medico, :especialidade => especialidade)

    visit edit_medico_path(medico)

    preencher_e_verificar_medico



  end

   scenario 'excluir medico' do #, :js => true  do

    especialidade = FactoryGirl.create(:especialidade, :tipo => 'Pediatra')

    medico = FactoryGirl.create(:medico, :especialidade => especialidade)

    visit medicos_path

    click_link 'Excluir'
    

  end

   def preencher_e_verificar_medico

      fill_in 'Nome',  :with => "Paulo"
      fill_in 'Cpf',  :with => "05936201596"
      fill_in 'Endereco',  :with => "Rua A"
      fill_in 'Telefone',  :with => "27256325"
      fill_in 'Crm',  :with => "0025636"

      select 'Pediatra', :on => 'Especialidade'
 

      click_button 'Salvar'

      page.should have_content 'Nome: Paulo'
      page.should have_content 'Cpf: 05936201596'
      page.should have_content 'Endereco: Rua A'
      page.should have_content 'Telefone: 27256325'
      page.should have_content 'Crm: 0025636'
      page.should have_content 'Especialidade: Pediatra'
      

   end
end
