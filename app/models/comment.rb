# == Schema Information
# Schema version: 20080728142501
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  post_id    :integer         
#  name       :string(255)     
#  email      :string(255)     
#  contents   :text            
#  created_at :datetime        
#  updated_at :datetime        
#

class Comment < ActiveRecord::Base
  belongs_to :post
  has_attached_file :photo,
                    :styles => { :medium => "300x300>",
                                 :thumb  => "100x100>" }
end
