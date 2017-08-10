class AdMatrixCategory < ApplicationRecord
  self.primary_key = "pk_id"
  has_many :templates, foreign_key: 'fk_ad_matrix_category_id'
  belongs_to :parent_category, class_name: 'AdMatrixCategory', foreign_key: 'fk_parent_category_id'
  belongs_to :latest_template, class_name: 'Template', foreign_key: 'fk_latest_template_id'
end
