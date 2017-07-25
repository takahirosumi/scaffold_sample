json.extract! room, :id, :room_type, :num_rooms, :square, :floor, :building_type, :structure_type, :floor_height, :created_at, :updated_at
json.url room_url(room, format: :json)
