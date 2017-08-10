class RoleTitle < ApplicationRecord
  self.table_name = 'roletitle'
  self.primary_key = "pk_id"
  has_many :user_infos, foreign_key: 'fk_roletitle_id'
end
