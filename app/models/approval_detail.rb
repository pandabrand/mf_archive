class ApprovalDetail < ApplicationRecord
  self.primary_key = "pk_id"
  self.table_name = "approval_detail"
  belongs_to :order, foreign_key: 'fk_order_id', class_name: 'Order'
  belongs_to :role,  foreign_key: 'fk_role_id', class_name: 'Role'
  belongs_to :user, foreign_key: 'fk_user_id', class_name: 'User'
end
#
