class Event < ActiveRecord::Base
belongs_to :user

validates :title, length: { minimum: 5 }
validates :description,length: {minimum: 3}
validates :location, length: {minimum: 3 }
validates :user_id, presence: true
end
