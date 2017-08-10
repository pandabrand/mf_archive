class Division < ApplicationRecord
  self.table_name = 'lab_region'
  self.primary_key = "pk_id"
  has_many :districts, inverse_of: 'division'
  has_many :user_infos, inverse_of: 'division'
  has_many :orders, inverse_of: 'division'
end
