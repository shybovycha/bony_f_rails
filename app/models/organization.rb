class Organization < ActiveRecord::Base
    has_many :promotions
    belongs_to :user
end
