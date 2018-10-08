class AddusuarioRefToTareas < ActiveRecord::Migration[5.1]
  def change
  	add_reference :tareas , :usuario, foreing_key: true
  end
end
