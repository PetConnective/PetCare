class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.date :birthdate
      t.integer :pet_type
      t.integer :genre
      t.string :breed
      t.integer :size
      t.boolean :castrado
      t.boolean :dewormed
      t.boolean :vacunas
      t.string :related_location
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
