class Contacto < ApplicationRecord
  validates :asunto,  :presence => true
  validates :email,  :presence => true
  validates :mensaje,  :presence => true

end
