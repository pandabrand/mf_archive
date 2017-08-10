class AdditionalRunDate < ApplicationRecord
  self.table_name = 'additional_run_date'
  self.primary_key = "pk_id"
  belongs_to :order, class_name: 'Order', foreign_key: 'fk_order_id'
end
