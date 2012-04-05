class CreateEtiquets < ActiveRecord::Migration
  def change
    create_table :etiquets do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
