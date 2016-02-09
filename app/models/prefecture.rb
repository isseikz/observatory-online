class Prefecture < ActiveRecord::Base
    belongs_to :address
    has_many :cities
end
