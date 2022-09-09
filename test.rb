require_relative 'lib/database_connection'
require_relative './lib/item_repository'
require_relative './lib/item'
require_relative './lib/order_repository'

DatabaseConnection.connect('shop_database_test')


item_repository = ItemRepository.new


n = 0

item_repository.all.map do |item|
    p item.unit_price
     n  -= item.unit_price
end

p n
