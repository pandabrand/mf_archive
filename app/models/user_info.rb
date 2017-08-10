class UserInfo < ApplicationRecord
  self.table_name = 'lab_user_info'
  self.primary_key = "pk_id"
  belongs_to :user, foreign_key: 'pk_id'
  belongs_to :branch, foreign_key: 'fk_branch_id'
  belongs_to :district, foreign_key: 'fk_area_id'
  belongs_to :division, foreign_key: 'fk_region_id'
  belongs_to :us_state, foreign_key: 'fk_alternate_us_state_id'
  belongs_to :title1, foreign_key: 'fk_title1_id'
  belongs_to :title2, foreign_key: 'fk_title2_id'
  belongs_to :title3, foreign_key: 'fkTitle3ID'
  belongs_to :role_title, foreign_key: 'fk_roletitle_id'
  belongs_to :m_client, foreign_key: 'fk_client_id'
  has_and_belongs_to_many :branches, class_name: 'Branch', join_table: 'user_info_to_branch', foreign_key: 'cpkfk_user_info_id', association_foreign_key: 'cpkfk_branch_id'

  def full_name
    "#{name_last} #{name_first}"
  end

  def branch_manager
    branch.user_infos.first
  end
end
