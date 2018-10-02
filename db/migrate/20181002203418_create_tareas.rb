class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.string :tirulo
      t.text :descripcion

      t.timestamps
    end
  end
end
