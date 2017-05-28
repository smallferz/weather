class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :city, array: true, default: []
      t.references :user, null: false
      t.timestamps
    end
  end
end
