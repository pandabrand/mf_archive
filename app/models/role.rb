class Role < ApplicationRecord
  self.table_name = 'cdg_role'
  self.primary_key = :pk_id
  has_and_belongs_to_many :users, class_name: 'User', join_table: 'cdg_user_to_role_assignment', foreign_key: 'cpkfk_role_id'
  has_many :approval_details, inverse_of: 'role', foreign_key: 'fk_role_id'
end
