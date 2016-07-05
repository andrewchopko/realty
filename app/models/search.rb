class Search < ActiveRecord::Base

  def search_houses
    houses = House.all

    houses = houses.where(["street ILIKE ?", "%#{street}%"]) unless street.blank?
    houses = houses.where(["price >= ?", min_price]) unless min_price.blank?
    houses = houses.where(["price <= ?", max_price]) unless max_price.blank?
    houses = houses.where(["category_id = ?", realty_typ]) unless realty_typ.blank?
    houses = houses.where(["floor >= ?", min_floor_quantity]) unless min_floor.blank?
    houses = houses.where(["floor <= ?", max_floor_quantity]) unless max_floor.blank?
    houses = houses.where(["floor_quantity >= ?", min_floor_quantity]) unless min_floor_quantity.blank?
    houses = houses.where(["floor_quantity <= ?", max_floor_quantity]) unless max_floor_quantity.blank?
    houses = houses.where(["room_quantity >= ?", min_room_quantity]) unless min_room_quantity.blank?
    houses = houses.where(["room_quantity <= ?", max_room_quantity]) unless max_room_quantity.blank?

    return houses
  end
end
