# coding: utf-8

require 'spec_helper'

feature 'gerenciar especialidade' do

  scenario 'incluir especialidade' do # , :js => true  do

    visit new_especialidade_path

    preencher_e_verificar_especialidade

    

  end

  scenario 'alterar especialidade' do #, :js => true  do

    especialidade = FactoryGirl.create(:especialidade)

    visit edit_especialidade_path(especialidade)

    preencher_e_verificar_especialidade



  end

   scenario 'excluir especialidade' do #, :js => true  do

    especialidade = FactoryGirl.create(:especialidade)

    visit especialidades_path

    click_link 'Excluir'
    

  end

   def preencher_e_verificar_especialidade

      fill_in 'Tipo',  :with => "Pediatra"
      
   
      click_button 'Salvar'

      page.should have_content 'Tipo: Pediatra'
      

   end
end
