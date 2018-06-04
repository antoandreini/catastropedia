class CreateAlerta < ActiveRecord::Migration[5.2]
  def change
    create_table :alerta do |t|
      t.belongs_to :user, index: true
      t.string :titulo
      t.string :zonas
      t.datetime :fecha
      t.text :descripcion
      t.timestamps
    end
  end
end
