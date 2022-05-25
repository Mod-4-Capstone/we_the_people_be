# typed: true
class RegionalInfo
        attr_reader :planned_parenthood,
                :americans_for_prosperity,
                :aclu,
                :end_citizens_united,
                :national_association_of_police,
                :national_education_association,
                :national_parks_conservation,
                :nra,
                :numbers_usa,
                :norml,
                :politicians, 
                :id

    def initialize(politicians, quiz = nil)
        @id = nil
        @politicians = politicians
        @quiz = quiz
        @count = politicians.length
        @end_citizens_united = summarize('end_citizens_united')
        @planned_parenthood = summarize('planned_parenthood')
        @aclu = summarize('aclu')
        @americans_for_prosperity = summarize('americans_for_prosperity')
        @national_association_of_police = summarize('national_association_of_police')
        @national_education_association = summarize('national_education_association')
        @national_parks_conservation = summarize('national_parks_conservation')
        @nra = summarize('nra')
        @numbers_usa = summarize('numbers_usa')
        @norml = summarize('norml')
    end
    
    def summarize(sig)
        if @politicians.first.class == Politician
            ratings = @politicians.map{|politician| politician.ratings.public_send(sig)}
            rated_politicians = (0...ratings.size).reject{|i| ratings[i].nil?}.count
            average_rating = (ratings.sum(&:to_i).to_f / rated_politicians).round(1)
            user_difference = (@quiz[sig.to_sym].to_i - average_rating).abs.round(1)
        else 
            ratings = @politicians.map{|politician| politician.rating.public_send(sig)}
            rated_politicians = (0...ratings.size).reject{|i| ratings[i].nil?}.count
            average_rating = (ratings.sum(&:to_i).to_f / rated_politicians).round(1)
            user_difference = (@quiz[sig.to_sym].to_i - average_rating).abs.round(1)
        end
        return {
            average_rating: average_rating, 
            rated_politicians: "#{rated_politicians} out of #{@count} are currently rated by this Special Interest Group",
            user_difference: user_difference
            }
    end
end