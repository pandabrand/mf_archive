class Title2 < ApplicationRecord
  self.table_name = 'title'
  self.primary_key = "pk_id"
  has_many :user_infos, foreign_key: 'fk_title2_id'
end
