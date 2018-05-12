class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :publication, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :date
      t.string :text

      t.timestamps
    end
  end
end
