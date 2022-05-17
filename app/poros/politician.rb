class Politician
    attr_reader :ratings, :bio
    def initialize(id)
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
        @bio = VoteSmartFacade.candidate_bio(id)
    end
end
