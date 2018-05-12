class CreateAdoptionProcesses < ActiveRecord::Migration[5.1]
  def change
    create_table :adoption_processes do |t|
      t.references :user, foreign_key: true
      t.references :publication, foreign_key: true
      t.datetime :date
      t.integer :status

      t.timestamps
    end
  end
end
