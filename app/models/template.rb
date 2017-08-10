class Template < ApplicationRecord
  self.table_name = 'cdg_template'
  self.primary_key = "pk_id"
  has_many :orders, foreign_key: 'fk_template_id'
  belongs_to :ad_matrix_category, class_name: 'AdMatrixCategory', foreign_key: 'fk_ad_matrix_category_id'
  belongs_to :ad_size, class_name: 'AdSize', foreign_key: 'fk_ad_size'
  belongs_to :headline, class_name: 'Headline', foreign_key: 'fk_headline'
  belongs_to :media_type, class_name: 'MediaType', foreign_key: 'mediatype_id'
  has_one :ad_matrix_category, inverse_of: 'latest_template', foreign_key: 'fk_latest_template_id'
end
