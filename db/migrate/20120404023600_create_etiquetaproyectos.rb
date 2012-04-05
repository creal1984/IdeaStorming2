class CreateEtiquetaproyectos < ActiveRecord::Migration
  def change
    create_table :etiquetaproyectos do |t|
      t.integer :tipo
      t.integer :idproyecto

      t.timestamps
    end
  end
end
