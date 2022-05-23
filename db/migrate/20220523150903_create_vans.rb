class CreateVans < ActiveRecord::Migration[7.0]
  def change
    create_table :vans do |t|
      t.string :title
      t.text :description
      t.integer :seats
      t.string :location
      t.integer :price_par_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
