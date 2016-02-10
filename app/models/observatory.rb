class Observatory < ActiveRecord::Base
    has_one :address, autosave: true, dependent: :destroy
    has_one :observation_wavelength, autosave: true, dependent: :destroy
    has_one :general_use, autosave: true, dependent: :destroy
    has_one :longitude_latitude, autosave: true, dependent: :destroy
    @observatory = Observatory.new
end
