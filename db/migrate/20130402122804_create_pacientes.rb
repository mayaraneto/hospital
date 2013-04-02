class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :telefone
      t.string :dataNascimento

      t.timestamps
    end
  end
end
