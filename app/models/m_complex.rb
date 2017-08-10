class MComplex < ApplicationRecord
  self.table_name = 'lab_complex'
  self.primary_key = "pk_id"
  belongs_to :district, class_name: 'District', foreign_key: 'fk_area_id'
  has_many :branches, inverse_of: 'm_complex'
end
