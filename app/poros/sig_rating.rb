class SigRating
    attr_reader :planned_parenthood, 
                :americans_for_prosperity, 
                :aclu, 
                :end_citizens_united, 
                :national_assocation_of_police, 
                :national_education_assocation, 
                :national_parks_conservation, 
                :nra, 
                :numbers_usa, 
                :norml
    def initialize(data)
        @planned_parenthood = get_rating(data, '1578')
        @americans_for_prosperity = get_rating(data, '310')
        @aclu = get_rating(data, '1378')
        @end_citizens_united = get_rating(data, '2568')
        @national_assocation_of_police = get_rating(data, '2407')
        @national_education_assocation = get_rating(data, '1015')
        @national_parks_conservation = get_rating(data, '922')
        @nra = get_rating(data, '1034')
        @numbers_usa = get_rating(data, '1985')
        @norml = get_rating(data, '599')
    end

    def get_rating(data, id)
        data[:candidateRating][:rating].select{|sig| sig[:sigId] == id}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == id}.first[:rating].to_i : nil
    end
    
end