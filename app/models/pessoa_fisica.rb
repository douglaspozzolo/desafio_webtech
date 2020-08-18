class PessoaFisica < ApplicationRecord
  has_many :documentos, :dependent => :destroy
  has_many :historico_laborals, :dependent => :destroy
end
