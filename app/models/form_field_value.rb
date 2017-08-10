class FormFieldValue < ApplicationRecord
  self.primary_key = "pk_ID"
  self.table_name = 'form_field_value'
  belongs_to :order, class_name: 'Order', foreign_key: 'fk_order_id'
end
