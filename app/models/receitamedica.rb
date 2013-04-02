class Receitamedica < ActiveRecord::Base
  belongs_to :atendimento
  attr_accessible :nomeMedicamento, :data, :atendimento_id
end
