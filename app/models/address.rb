class Address < ActiveRecord::Base
    belongs_to :observatory
    has_many :prefectures
end
