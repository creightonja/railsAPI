class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone
      t.integer :global_rank

      t.timestamps
    end
  end
end
