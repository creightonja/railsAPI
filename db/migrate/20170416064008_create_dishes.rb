class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :primary_category
      t.integer :restaurant_id
      t.integer :global_rank
      t.integer :category_rank

      t.timestamps
    end
  end
end
