class Beacon < ActiveRecord::Base
    belongs_to :beaconic, polymorphic: true
end
