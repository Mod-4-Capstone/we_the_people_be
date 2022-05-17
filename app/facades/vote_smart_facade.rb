require './app/poros/sig_rating'
require './app/poros/politician'
class VoteSmartFacade
    def self.specific_candidate_ratings(id)
        SigRating.new(VoteSmartService.get_all_sig_ratings(id))
    end

    def self.all_ratings_for_candidates_in_zip(zip)
        candidate_ids = VoteSmartService.candidates_by_zip(zip).map{|i| i[:candidateId]}
        politicians = candidate_ids.map do |candidateId|
           Politician.new(candidateId)
        end
        return politicians
    end
    
    def self.zip_with_quiz(zip, quiz)
        candidate_ids = VoteSmartService.candidates_by_zip(zip).map{|i| i[:candidateId]}
        politicians_with_comparison = candidate_ids.map do |candidateId|
           Politician.new(candidateId, quiz)
        end
        return politicians_with_comparison
    end

    def self.all_ratings_for_candidates_in_state(state)
        candidate_ids = VoteSmartService.candidates_by_state(state).map{|i| i[:candidateId]}
        politicians = candidate_ids.map do |candidateId|
           Politician.new(candidateId)
        end
        return politicians
    end

    def self.candidate_bio(id)
        json = VoteSmartService.candidate_bio(id)
        Bio.new(json[:bio])
    end
end
