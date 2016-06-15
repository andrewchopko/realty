class Search < ActiveRecord::Base

  def search_houses
    houses = House.all

    houses = houses.where(["district LIKE ?", district]) if district.present?
    houses = houses.where(["street LIKE ?", street]) if street.present?
    houses = houses.where(["price >= ?", min_price]) if min_price.present?
    houses = houses.where(["price <= ?", max_price]) if max_price.present?
    houses = houses.where(["floor >= ?", min_floor]) if min_floor.present?
    houses = houses.where(["floor <= ?", max_floor]) if max_floor.present?
    houses = houses.where(["room >= ?", min_room]) if min_room.present?
    houses = houses.where(["room <= ?", max_room]) if max_room.present?
    houses = houses.where(["floor_quantity >= ?", min_floor_quantity]) if min_floor_quantity.present?
    houses = houses.where(["floor_quantity <= ?", max_floor_quantity]) if max_floor_quantity.present?

    return houses
  end

end
