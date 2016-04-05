class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :author_id
      t.string :img_url

      t.timestamps
    end
  end
end
