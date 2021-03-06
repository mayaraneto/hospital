# coding: utf-8

require 'spec_helper'

feature 'gerenciar atendimento' do

  scenario 'incluir atendimento' do # , :js => true  do

    medico = FactoryGirl.create(:medico, :nome => 'Paulo')
    paciente = FactoryGirl.create(:paciente, :nome => 'Joao')

    visit new_atendimento_path

    preencher_e_verificar_atendimento

    

  end

  scenario 'alterar atendimento' do #, :js => true  do

    medico = FactoryGirl.create(:medico, :nome => 'Paulo')
    paciente = FactoryGirl.create(:paciente, :nome => 'Joao')

    atendimento = FactoryGirl.create(:atendimento, :medico => medico, :paciente => paciente)

    visit edit_atendimento_path(atendimento)

    preencher_e_verificar_atendimento



  end

   scenario 'excluir atendimento' do #, :js => true  do

    medico = FactoryGirl.create(:medico, :nome => 'Paulo')
    paciente = FactoryGirl.create(:paciente, :nome => 'Joao')

    atendimento = FactoryGirl.create(:atendimento, :medico => medico, :paciente => paciente)

    visit atendimentos_path

    click_link 'Excluir'
    

  end

   def preencher_e_verificar_atendimento

      fill_in 'Data',  :with => "25/06/12"
      fill_in 'Hora',  :with => "10:30"

      select 'Paulo', :on => 'Medico'
      select 'Joao', :on => 'Paciente'
 

      click_button 'Salvar'

      page.should have_content 'Data: 25/06/12'
      page.should have_content 'Hora: 10:30'
      page.should have_content 'Medico: Paulo'
      page.should have_content 'Paciente: Joao'
      

   end
end
