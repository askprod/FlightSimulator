class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.date :departure_date
      t.string :departure_airport
      t.string :arrival_airport

      t.timestamps
    end
  end
end
