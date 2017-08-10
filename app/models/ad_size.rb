class AdSize < ApplicationRecord
  self.table_name = 'lab_ad_size'
  self.primary_key = "pk_id"
  has_many :templates, foreign_key: 'fk_ad_size'
end
