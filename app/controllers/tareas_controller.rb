class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  	#select * from tareas
  end

  def new
  	@tarea= Tarea.new

  end
   def create
  	@tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion:params[:tarea][:descripcion])
  	
  	if @tarea.save 
  	#este metodo hace el insert into(tareas y descripcion) values (formulario)
  	else
  		render :new
    end
end
  	def show
  		@tarea =Tarea.find(params[:id])
  		#selectfrom tareas where id=
    
  	end
end
