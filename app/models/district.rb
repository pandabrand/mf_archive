class District < ApplicationRecord
  self.table_name = 'lab_area'
  self.primary_key = "pk_id"
  belongs_to :division, class_name: 'Division', foreign_key: 'region_id'
  has_many :m_complexes, inverse_of: 'district'
  has_many :user_infos, inverse_of: 'district'
  has_many :orders, inverse_of: 'district'
end
