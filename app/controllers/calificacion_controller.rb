class CalificacionController < ApplicationController
  def index
    @titulo= "Calificacion de Proyecto"
    
  end

  def new
    if request.post?
    @calificacion=Calificarcion.new(params[:calificacion])
    p_user_id = session[:user_id]
    idu = $idproyecto
    user = User.find_by_id(p_user_id)
    @calificacion.nombreusuario= user.nombre
    @calificacion.idproyecto = idu
    if @calificacion.save
    flash[:notice]="se ha ingresado su calificacion"
    
    redirect_to :controller => "calificacion" , :action => "update"

  end
    end
  end

  def show
  end
  def update
    nota = 0
     cont = 0
    @proyecto=Proyecto.find_by_id($idproyecto)
    @calificacion=Calificarcion.all
     @calificacion2=Calificarcion.all
     @calificacion.each do |c| 
       if c.idproyecto == @proyecto.id
         nota = nota + c.nota
         @proyecto.calificacion=nota
         cont = cont + 1
       end
     end
       notafinal= nota/cont
       @proyecto.calificacion=notafinal
       @proyecto.save
       flash[:notice]="se ingreso su nota correctamente"
    redirect_to home_url
  end
end
