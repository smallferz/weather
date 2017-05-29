class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :unique_identifier, null: false
      t.timestamps
    end
    add_index :users, :unique_identifier, unique: true
  end
end
