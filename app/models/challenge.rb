class Challenge < ActiveRecord::Base
    belongs_to :promotion
    has_many :beacons, as: :beaconic

    def done?
        raise Exception.new "Not implemented"
    end
end
