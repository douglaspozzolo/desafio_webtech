class CreateHistoricoLaborals < ActiveRecord::Migration[5.2]
  def change
    create_table :historico_laborals do |t|
      t.string :nome_identificador
      t.references :empregador, foreign_key: true
      t.references :pessoa_fisica, foreign_key: true
      t.references :documento, foreign_key: true
      t.integer :anos
      t.integer :meses
      t.integer :dias

      t.timestamps
    end
  end
end
