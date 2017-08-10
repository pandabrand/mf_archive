class PublicationType < ApplicationRecord
  self.primary_key = "pk_id"
  has_many :orders, foreign_key: 'fk_publication_type_id'
end
