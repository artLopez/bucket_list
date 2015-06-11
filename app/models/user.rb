class User < ActiveRecord::Base
has_many :events
validates_uniqueness_of :username
validates :username,length: { minimum: 5 }
validates :password,length: {minimum: 6}
validates :first_name,length: {minimum: 1 }
validates :last_name, length: {minimum: 1 }
end
