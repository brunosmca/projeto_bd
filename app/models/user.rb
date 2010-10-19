class User < ActiveRecord::Base
  has_many :activities
end
