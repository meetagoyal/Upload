class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_number, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.timestamps
    end
    add_index :items, [:item_number, :start_date], unique: true
  end
end
