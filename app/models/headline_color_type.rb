class HeadlineColorType < ApplicationRecord
  self.table_name = 'headlinecolortype'
  self.primary_key = "pkID"
  has_many :headlines, inverse_of: 'headline_color_type', foreign_key: 'headlineColorTypeID'
end
