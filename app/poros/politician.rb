class Politician 
    attr_reader :ratings
    def initialize(id, ratings = false, biography = false) 
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
    end
end