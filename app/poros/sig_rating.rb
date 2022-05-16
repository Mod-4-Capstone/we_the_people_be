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
        @planned_parenthood = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1578"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1578"}.first[:rating].to_i : nil
        @americans_for_prosperity = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1578"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1578"}.first[:rating].to_i : nil
        @aclu = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1378"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1378"}.first[:rating].to_i : nil
        @end_citizens_united = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "2568"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "2568"}.first[:rating].to_i : nil
        @national_assocation_of_police = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "2407"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "2407"}.first[:rating].to_i : nil
        @national_education_assocation = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1015"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1015"}.first[:rating].to_i : nil
        @national_parks_conservation = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "922"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "922"}.first[:rating].to_i : nil
        @nra = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1034"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1034"}.first[:rating].to_i : nil
        @numbers_usa = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1985"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "1985"}.first[:rating].to_i : nil
        @norml = data[:candidateRating][:rating].select{|sig| sig[:sigId] == "599"}.any? ? data[:candidateRating][:rating].select{|sig| sig[:sigId] == "599"}.first[:rating].to_i : nil
    end
end