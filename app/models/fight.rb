class Fight < ApplicationRecord
    # this line sets teh relationship for the fights to the fighters
    belongs_to :fighter, :optional => true
end
