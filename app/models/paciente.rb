class Paciente < ActiveRecord::Base
  attr_accessible :cpf, :dataNascimento, :endereco, :nome, :telefone
end
