class Headline < ApplicationRecord
  self.table_name = 'lab_headline'
  self.primary_key = "pk_id"
  has_many :templates, foreign_key: 'fk_headline'
  belongs_to :headline_color_type, foreign_key: 'headlineColorTypeID'
  def headline_code_title
    "#{code} : #{headline_color_type.name} : #{title}"
  end
end
