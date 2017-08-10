class User < ApplicationRecord
  self.table_name = 'cdg_user'
  self.primary_key = "pk_id"
  has_one :user_info, inverse_of: 'user', foreign_key: 'pk_id'
  has_and_belongs_to_many :roles, class_name: 'Role', join_table: 'cdg_user_to_role_assignment', foreign_key: 'cpkfk_user_id'
  has_many :approval_details, inverse_of: 'user', foreign_key: 'fk_user_id'
end
