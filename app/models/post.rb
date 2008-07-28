# == Schema Information
# Schema version: 20080728142501
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)     
#  contents   :text            
#  created_at :datetime        
#  updated_at :datetime        
#

class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
end
