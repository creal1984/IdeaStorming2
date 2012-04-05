class EtiquetaProyectoController < ApplicationController
  def new
    @etiqueta = Etiqueta.all
    
  end

  def show
  end

  def borrar
  end
end
