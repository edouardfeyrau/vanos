class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :transaction_amount
      t.references :user, null: false, foreign_key: true
      t.references :van, null: false, foreign_key: true

      t.timestamps
    end
  end
end
