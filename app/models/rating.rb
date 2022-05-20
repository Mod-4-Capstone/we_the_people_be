class Rating < ApplicationRecord
    belongs_to :representative, optional: true
end