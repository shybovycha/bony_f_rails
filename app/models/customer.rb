class Customer < ActiveRecord::Base
    has_many :beacons, as: :beaconic
end
