class AddPricePerDaytoVans < ActiveRecord::Migration[7.0]
  def change
    add_column :vans, :price_per_day, :float
    remove_column :vans, :price_par_day, :integer
  end
end
