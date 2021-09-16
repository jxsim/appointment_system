class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients, id: false, primary_key: :id do |t|
      t.string :id, null: false
      t.string :name
      t.integer :age
      t.string :gender, limit: 1

      t.timestamps
    end
  end
end
