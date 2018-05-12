class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.references :user, foreign_key: true
      t.references :pet, foreign_key: true
      t.integer :status
      t.datetime :date

      t.timestamps
    end
  end
end
