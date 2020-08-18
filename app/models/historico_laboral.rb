class HistoricoLaboral < ApplicationRecord
  belongs_to :empregador
  belongs_to :pessoa_fisica
  belongs_to :documento
end
