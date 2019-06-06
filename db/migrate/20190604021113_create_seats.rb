class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.integer :flight_id
      t.string :name
      t.decimal :baggage

      t.timestamps
    end
  end
end
