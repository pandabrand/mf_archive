class Branch < ApplicationRecord
  self.table_name = 'lab_branch'
  self.primary_key = "pk_id"
  belongs_to :m_complex, foreign_key: 'fk_complex_id'
  has_many :orders, inverse_of: 'branch'
  has_many :user_infos, inverse_of: 'branch', foreign_key: 'fk_branch_id'
  has_and_belongs_to_many :user_infos, class_name: 'UserInfo', join_table: 'user_info_to_branch', foreign_key: 'cpkfk_branch_id', association_foreign_key: 'cpkfk_user_info_id'

  def branch_compound_name
    "#{branch_id}-#{name}"
  end
end
