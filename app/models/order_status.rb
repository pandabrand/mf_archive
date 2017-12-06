class OrderStatus < ApplicationRecord
  self.primary_key = "pk_id"
  self.table_name = "cdg_order_status"
  has_many :orders, inverse_of: 'order_status'
end
