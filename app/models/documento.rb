class Documento < ApplicationRecord
  has_one_attached :doc, :dependent => :destroy
  belongs_to :pessoa_fisica , :optional => true
  has_one :historico_laboral , :dependent => :destroy
end
