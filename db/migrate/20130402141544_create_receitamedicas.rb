class CreateReceitamedicas < ActiveRecord::Migration
  def change
    create_table :receitamedicas do |t|
      t.string :nomeMedicamento
      t.string :data
      t.references :atendimento

      t.timestamps
    end
    add_index :receitamedicas, :atendimento_id
  end
end
