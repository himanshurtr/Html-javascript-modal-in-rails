class CreateBookApps < ActiveRecord::Migration[5.2]
  def change
    create_table :book_apps do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
