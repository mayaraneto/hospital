# coding: utf-8

require 'spec_helper'

feature 'gerenciar paciente' do

  scenario 'incluir paciente' do # , :js => true  do

    visit new_paciente_path

    preencher_e_verificar_paciente

    

  end

  scenario 'alterar paciente' do #, :js => true  do

    paciente = FactoryGirl.create(:paciente)

    visit edit_paciente_path(paciente)

    preencher_e_verificar_paciente



  end

   scenario 'excluir paciente' do #, :js => true  do

    paciente = FactoryGirl.create(:paciente)

    visit pacientes_path

    click_link 'Excluir'
    

  end

   def preencher_e_verificar_paciente

      fill_in 'Nome',  :with => "Joao"
      fill_in 'Cpf',  :with => "123654789"
      fill_in 'Endereco',  :with => "Rua B"
      fill_in 'Telefone',  :with => "27256666"
      fill_in 'DataNascimento',  :with => "23/11/98"
      
   
      click_button 'Salvar'

      page.should have_content 'Nome: Joao'
      page.should have_content 'Cpf: 123654789'
      page.should have_content 'Endereco: Rua B'
      page.should have_content 'Telefone: 27256666'
      page.should have_content 'DataNascimento: 23/11/98'
      

   end
end
