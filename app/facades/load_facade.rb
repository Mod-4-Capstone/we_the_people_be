require './app/poros/social'
class LoadFacade 
    def self.candidates_in_state(state)
        candidate_ids = VoteSmartService.candidates_by_state(state).map{|i| i[:candidateId]}.uniq
    end

    def self.candidate_bio(id)
        json = VoteSmartService.candidate_bio(id)
        bio = Bio.new(json[:bio])
        return {
                name: bio.name, 
                congressional_type: bio.congressional_type, 
                state: bio.state, 
                age: bio.age, 
                district: bio.district, 
                photo: bio.photo, 
                gender: bio.gender, 
                years_in_office: bio.years_in_office, 
                next_election: bio.next_election, 
                party: bio.party
                }
    end

    def self.specific_candidate_ratings(id)
        ratings = SigRating.new(VoteSmartService.get_all_sig_ratings(id))
            return {
                aclu: ratings.aclu,
                planned_parenthood: ratings.planned_parenthood, 
                americans_for_prosperity: ratings.americans_for_prosperity, 
                end_citizens_united: ratings.end_citizens_united, 
                national_association_of_police: ratings.national_association_of_police, 
                national_education_association: ratings.national_education_association, 
                national_parks_conservation: ratings.national_parks_conservation, 
                nra: ratings.nra, 
                numbers_usa: ratings.numbers_usa, 
                norml: ratings.norml
                }
    end

    def self.social_info(id)
        social = Social.new(VoteSmartService.get_address(id)[:webaddress][:address])
        return {
            twitter: social.twitter, 
            contact_page: social.contact_page, 
            website: social.website
        }
    end
end