class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.date :departure_date, unique: true
      t.references :departure_airport, index: true
      t.references :arrival_airport, index: true

      t.timestamps
    end
  end
end
