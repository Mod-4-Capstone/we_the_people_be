class Politician
    attr_reader :ratings, :bio, :user_ratings, :opinion_delta
    def initialize(id, user_ratings=nil)
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
        @bio = VoteSmartFacade.candidate_bio(id)
        @user_ratings = run_analysis(@ratings, user_ratings) if user_ratings.nil? == false
        @opinion_delta = difference_of_opinion(politician_opinion_sum, @user_ratings.values.sum) if user_ratings.nil? == false
    end

    def run_analysis(ratings, user_ratings)
        # check for nils in ratings
        instance_variables = ratings.instance_variables
        non_nil = instance_variables.select do |iv|
            ratings.instance_variable_get(iv).nil? == false
        end
        return non_nil.map{ |sig| [sig.to_s[1..], (ratings.instance_variable_get(sig) - user_ratings[sig.to_s[1..].to_sym].to_i ).abs] }.to_h
    end

    def politician_opinion_sum
        @ratings.aclu.to_i + @ratings.americans_for_prosperity.to_i + @ratings.end_citizens_united.to_i + @ratings.national_assocation_of_police.to_i + @ratings.national_assocation_of_police.to_i + @ratings.national_education_assocation.to_i+ @ratings.norml.to_i + @ratings.nra.to_i+ @ratings.numbers_usa.to_i + @ratings.planned_parenthood.to_i
    end

    def difference_of_opinion(politician, user)
        ((politician.to_f - user)/politician).abs*100
    end
end
