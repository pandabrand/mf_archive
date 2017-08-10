class MClient < ApplicationRecord
  self.table_name = 'client'
  self.primary_key = "pk_id"
  has_many :user_infos, foreign_key: 'fk_client_id'
end
