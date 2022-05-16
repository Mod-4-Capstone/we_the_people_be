class Politician
    attr_reader :ratings, :bio
    def initialize(id, ratings = false, biography = false)
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
        @bio = VoteSmartFacade
    end
end
