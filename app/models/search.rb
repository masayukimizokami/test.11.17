class Search < ApplicationRecord
    def search_rooms

        rooms = Room.all
        rooms = Room.all
        rooms = rooms.where(["room_name LIKE ? ","%#{keywords}%"]) if keywords.present?
        rooms = rooms.where(["room_address LIKE ?","%#{area_search}%"]) if area_search.present?
        

        return rooms
    end

end
