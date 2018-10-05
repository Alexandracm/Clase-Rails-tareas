class TareasController < ApplicationController

before_action :set_tarea, except:[:index, :new, :create]

  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end

  def new
  	@tarea= Tarea.new

  end
   def create
  	@tarea = Tarea.new(tarea_params)
  	
  	if @tarea.save 
  	#este metodo hace el insert into(tareas y descripcion) values (formulario)
  	redirect_to @tarea #action show  cambio controller:'tareas', action:'show',id:@tarea.id
  	else

  		render :new
    end
end
  	def show
  		#@tarea =Tarea.find(params[:id])
  		#selectfrom tareas where id=
    
  	end
    def destroy
     #@tarea =Tarea.find(params[:id])
     @tarea.destroy
     redirect_to tareas_path # cambio controller:"tareas", action:"index"
     #para eliminar tareas 
    end

    def edit
     #@tarea =Tarea.find(params[:id])
      end

     def update
     #@tarea= Tarea.find (params[:id])
     if @tarea.update(tarea_params) 
     redirect_to @tarea # cambio =>controller:"tareas", action:"show", id: @tarea.id

     else
    render :edit
    end
  end

private #metodos que solo funcionan dentro de esta clase
  def set_tarea
      @tarea= Tarea.find (params[:id])
   end

def tarea_params
   params.require(:tarea).permit(:titulo, :descripcion)
end

end






