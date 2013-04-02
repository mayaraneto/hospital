# coding: utf-8

require 'spec_helper'

feature 'gerenciar receitamedica' do

  scenario 'incluir receitamedica' do # , :js => true  do

    atendimento = FactoryGirl.create(:atendimento, :data => '26/06/12')

    visit new_receitamedica_path

    preencher_e_verificar_receitamedica

    

  end

  scenario 'alterar receitamedica' do #, :js => true  do

    atendimento = FactoryGirl.create(:atendimento, :data => '26/06/12')

    receitamedica = FactoryGirl.create(:receitamedica, :atendimento => atendimento)

    visit edit_receitamedica_path(receitamedica)

    preencher_e_verificar_receitamedica



  end

   scenario 'excluir receitamedica' do #, :js => true  do

    atendimento = FactoryGirl.create(:atendimento, :data => '26/06/12')

    receitamedica = FactoryGirl.create(:receitamedica, :atendimento => atendimento)

    visit receitamedicas_path

    click_link 'Excluir'
    

  end

   def preencher_e_verificar_receitamedica

      fill_in 'NomeMedicamento',  :with => "Novalgina"
      fill_in 'Data',  :with => "26/01/13"

      select '26/06/12', :on => 'Atendimento'
 

      click_button 'Salvar'

      page.should have_content 'NomeMedicamento: Novalgina'
      page.should have_content 'Data: 26/01/13'
      page.should have_content 'Atendimento: 26/06/12'
      

   end
end
