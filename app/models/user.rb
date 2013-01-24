class User < ActiveRecord::Base
  attr_accessible :bio, :display_name, :email, :password_hash, :password_salt, :twitter
end
