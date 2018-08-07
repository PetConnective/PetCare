class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :breed
      t.integer :color
      t.integer :size
      t.integer :age
      t.integer :gender
      t.boolean :vaccined
      t.boolean :neutered
      t.boolean :dewormed
      t.text :notes
      t.integer :status
      t.datetime :date
      t.integer :type
      t.decimal :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
