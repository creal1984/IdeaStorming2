class Proyecto < ActiveRecord::Base
  has_many :etiquets
   validates_presence_of :titulo, :nivelinversion , :resumen,
  :message => "Campo en Blanco"

     validates_length_of :titulo , :within =>1..20, 
     :message => "20 caracteres como maximo"
     validates_length_of :resumen , :within =>1..100, 
    :message => "100 caracteres como maximo"
  validates_uniqueness_of :titulo
end
