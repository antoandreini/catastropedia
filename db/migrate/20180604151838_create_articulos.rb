class CreateArticulos < ActiveRecord::Migration[5.2]
  def change
    create_table :articulos do |t|
      t.belongs_to :user, index: true
      t.string :titulo
      t.datetime :fecha
      t.string :imagen
      t.string :altimg
      t.text :contenido

      t.timestamps
    end
  end
end
