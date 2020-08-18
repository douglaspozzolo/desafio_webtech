class CreateEmpregadors < ActiveRecord::Migration[5.2]
  def change
    create_table :empregadors do |t|
      t.string :nome
      t.string :cnpj

      t.timestamps
    end
  end
end
