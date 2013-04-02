class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.string :data
      t.string :hora
      t.references :medico
      t.references :paciente

      t.timestamps
    end
    add_index :atendimentos, :medico_id
    add_index :atendimentos, :paciente_id
  end
end
