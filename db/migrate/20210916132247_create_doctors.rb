class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors, id: false, primary_key: :id do |t|
      t.string :id, null: false
      t.string :name

      t.timestamps
    end
  end
end
