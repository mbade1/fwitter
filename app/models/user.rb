class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets
  validates_presence_of :username, :email, :password

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
