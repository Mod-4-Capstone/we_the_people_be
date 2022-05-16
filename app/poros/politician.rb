class Politician
    attr_reader :ratings, :name, :state, :
    def initialize(id, ratings = false, biography = false)
        @ratings = VoteSmartFacade.specific_candidate_ratings(id)
        @name = data[:candidate][:firstName] + data[:candidate][:lastName]
        @state = data[:office][:stateId]
        @age = convert_bday(data[:candidate][:birthDate])
        @district = data[:districtId]
        @gender = data[:candidate][:gender]
        @years_in_office = in_office([:candidate][:firstElect])
        @elgible = next_up([:candidate][:lastElect])
    end

    def convert_bday(bday)

    end

    def type_of_rep(data)

    end
end
