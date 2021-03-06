# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name,  :email
  
  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates       :name,  :presence   => true,
                          :length     => { :maximum => 50 }
  validates       :email, :presence   => true,
                          :format     => valid_email,
                          :uniqueness => { :case_sensitive => false }
                        
end
