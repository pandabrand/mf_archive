class Order < ApplicationRecord
  self.table_name = 'cdg_order'
  self.primary_key = "pk_id"
  belongs_to :branch, class_name: 'Branch', foreign_key: 'fk_branch_id'
  belongs_to :creator, class_name: 'User', foreign_key: 'fk_creator_id'
  belongs_to :publication_type, class_name: 'PublicationType', foreign_key: 'fk_publication_type_id'
  belongs_to :template, class_name: 'Template', foreign_key: 'fk_template_id'
  belongs_to :order_status, class_name: 'OrderStatus', foreign_key: 'fk_order_status_id'
  belongs_to :district, class_name: 'District', foreign_key: 'fk_area_id'
  belongs_to :division, class_name: 'Division', foreign_key: 'fk_region_id'
  has_many :approval_details, inverse_of: 'order', foreign_key: 'fk_order_id'
  has_many :form_field_values, inverse_of: 'order', foreign_key: 'fk_order_id'
  has_one :approval_bm,  ->(approval_detail) { where("((status_description = 'BM approved' or status_description = 'approved') and (user_role = 'Branch Manager' OR user_role = 'Media Manager')) or (status_description = 'approved' and user_role = 'Site Administrator')") }, class_name: 'ApprovalDetail', foreign_key: 'fk_order_id'
  has_one :approval_dm, ->(approval_detail) { where("status_description =  'approved' and user_role = 'District Administrator'") }, class_name: 'ApprovalDetail', foreign_key: 'fk_order_id'
  has_many :additional_run_dates, inverse_of: 'order', foreign_key: 'fk_order_id'

  def path_arrray
    unless hi_res_uri.nil?
      hi_res_uri.split('\\\\')
    else
      []
    end
  end

  def hi_res_path
    unless path_arrray.empty?
      "#{Rails.root}/public/pickup/#{path_arrray.last}"
    else
      ''
    end
  end

  def hi_res_download_path
    if File.exists?(hi_res_path)
      "/public/pickup/#{path_arrray.last}"
    else
      ''
    end
  end
end
