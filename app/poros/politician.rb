class Politician
    attr_reader :ratings, :bio, :user_ratings
    def initialize(id, user_ratings=nil)
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
        @bio = VoteSmartFacade.candidate_bio(id)
        @user_ratings = run_analysis(@ratings, user_ratings) if user_ratings.nil? == false
        @opinion_delta = difference_of_opinion(politician_opinion_sum, @user_ratings.values.sum) if user_ratings.nil? == false
    end

    def run_analysis(ratings, user_ratings)
        user_comparison = { 
            aclu: (ratings.aclu - user_ratings[:aclu].to_i).abs, 
            americans_for_prosperity: (ratings.americans_for_prosperity - user_ratings[:americans_for_prosperity].to_i).abs, 
            end_citizens_united: (ratings.end_citizens_united - user_ratings[:end_citizens_united].to_i).abs, 
            national_assocation_of_police: (ratings.national_assocation_of_police - user_ratings[:national_assocation_of_police].to_i).abs, 
            national_education_assocation: (ratings.national_education_assocation - user_ratings[:national_education_assocation].to_i).abs, 
            norml: (ratings.norml - user_ratings[:norml].to_i).abs, 
            nra: (ratings.nra - user_ratings[:nra].to_i).abs, 
            numbers_usa: (ratings.numbers_usa - user_ratings[:numbers_usa].to_i).abs, 
            planned_parenthood: (ratings.planned_parenthood - user_ratings[:planned_parenthood].to_i).abs
        }
        return user_comparison
    end

    def politician_opinion_sum
        @ratings.aclu.to_i + @ratings.americans_for_prosperity.to_i + @ratings.end_citizens_united.to_i + @ratings.national_assocation_of_police.to_i + @ratings.national_assocation_of_police.to_i + @ratings.national_education_assocation.to_i+ @ratings.norml.to_i + @ratings.nra.to_i+ @ratings.numbers_usa.to_i + @ratings.planned_parenthood.to_i
    end

    def difference_of_opinion(politician, user)
        ((politician.to_f - user)/politician).abs*100
    end
end
