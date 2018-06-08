class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :asunto
      t.string :email
      t.text :mensaje

      t.timestamps
    end
  end
end
