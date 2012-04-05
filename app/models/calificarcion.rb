class Calificarcion < ActiveRecord::Base
  validates_presence_of :nota, :comentario,
  :message => "Campo en Blanco"

  validates_length_of :comentario , :within =>1..40, 
 :message => "40 caracteres como maximo"
  
   validates_numericality_of :nota, :less_than => 11, :greater_than => 0,
  :message => "Ingrese una Nota de 1 a 10"
end
