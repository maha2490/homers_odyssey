class Place < ApplicationRecord
	acts_as_mappable :auto_geocode=>true
end
