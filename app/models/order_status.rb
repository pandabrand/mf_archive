class OrderStatus < ApplicationRecord
  self.primary_key = "pk_id"
  self.table_name = "cdg_order_status"
  belongs_to :orders, foreign_key: 'fk_order_status_id'
end
