class Promotion < ActiveRecord::Base
    has_many :challenges
    belongs_to :organization
end
