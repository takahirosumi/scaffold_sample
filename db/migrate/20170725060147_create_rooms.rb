class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_type
      t.integer :num_rooms
      t.integer :square
      t.integer :floor
      t.integer :building_type
      t.integer :structure_type
      t.integer :floor_height
      t.integer :value

      t.timestamps
    end
  end
end
