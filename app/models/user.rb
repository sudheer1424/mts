class User < ActiveRecord::Base
  require 'digest/md5'
  attr_accessible :email, :first_name, :last_name, :password, :phone
  before_save :encrypt_password

  
    
  def encrypt_password
  	self.password = Digest::MD5.hexdigest(password)
  end
    
end
