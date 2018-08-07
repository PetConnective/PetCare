class CreatePetPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_photos do |t|
      t.references :pet, foreign_key: true
      t.references :user, foreign_key: true
      t.string :photo_path
      t.string :profile_photo

      t.timestamps
    end
  end
end
