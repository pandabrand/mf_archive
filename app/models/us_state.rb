class UsState < ApplicationRecord
  self.table_name = 'us_state'
  self.primary_key = "pk_id"
  has_many :user_infos, foreign_key: 'fk_alternate_us_state_id'
end
