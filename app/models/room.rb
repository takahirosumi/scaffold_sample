class Room < ApplicationRecord

# 新しく入れた部分
def self.room_value(params)
  require 'net/http'
  require 'uri'
  require 'json'

  # uri = URI.parse('http://localhost:8080/predict?room_type=50&num_rooms=1&square=62.30&floor=3&building_type=10&structure_type=40&floor_height=8')
  uri = URI.parse("http://localhost:8080/predict?room_type=#{params[:room_type]}&num_rooms=#{params[:num_rooms]}&square=#{params[:square]}&floor=#{params[:floor]}&building_type=#{params[:building_type]}&structure_type=#{params[:structure_type]}&floor_height=#{params[:floor_height]}")
  json = Net::HTTP.get(uri)
  p json
  result = JSON.parse(json)
  p result
  return result
end
# ここまで新しく入れたもの

end

# 参考
#{params[:room_type]}
#{params[:num_rooms]}
#{params[:square]}
#{params[:floor]}
#{params[:building_type]}
#{params[:structure_type]}
#{params[:floor_height]}

#[:id]
