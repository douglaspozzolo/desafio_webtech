class CreatePessoaFisicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoa_fisicas do |t|
      t.string :nome
      t.string :cpf
      t.string :nome_da_mae
      t.string :nit

      t.timestamps
    end
  end
end
