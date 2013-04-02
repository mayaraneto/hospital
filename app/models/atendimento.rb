class Atendimento < ActiveRecord::Base
  belongs_to :medico
  belongs_to :paciente
  attr_accessible :data, :hora, :medico_id, :paciente_id
end
