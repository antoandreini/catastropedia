class CreateNovedads < ActiveRecord::Migration[5.2]
  def change
    create_table :novedads do |t|
      t.belongs_to :user, index: true
      t.string :titulo
      t.datetime :fecha
      t.text :copete
      t.string :imagen
      t.string :altimg
      t.text :contenido

      t.timestamps
    end
  end
end
