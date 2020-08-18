class AddPessoaFisicaToDocumentos < ActiveRecord::Migration[5.2]
  def change
    add_reference :documentos, :pessoa_fisica, foreign_key: true
  end
end
