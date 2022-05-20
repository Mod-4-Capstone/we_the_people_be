class Biography < ApplicationRecord
    belongs_to :representative, optional: true
end