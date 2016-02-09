class City < ActiveRecord::Base
    belongs_to :city
    has_many :wards
end
