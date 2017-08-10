class MediaType < ApplicationRecord
  self.table_name = 'mediatype'
  self.primary_key = "pk_id"
  has_many :templates, foreign_key: 'mediatype_id'
end
