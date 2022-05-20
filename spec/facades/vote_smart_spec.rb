require 'rails_helper'

RSpec.describe VoteSmartFacade, :vcr do
    describe 'specific candidate ratings' do
        it 'will return all the ratings of a certain candidate' do
            ratings = VoteSmartFacade.specific_candidate_ratings('110942')
            expect(ratings.aclu).to eq(100)
            expect(ratings.americans_for_prosperity).to eq(10)
            expect(ratings.end_citizens_united).to eq(100)
            expect(ratings.national_association_of_police).to eq(80)
            expect(ratings.national_education_association).to eq(100)
            expect(ratings.national_parks_conservation).to eq(100)
            expect(ratings.norml).to eq(92)
            expect(ratings.nra).to eq(7)
            expect(ratings.numbers_usa).to eq(13)
            expect(ratings.planned_parenthood).to eq(100)
        end
    end

    describe '#candidate_bio' do
        it "will return candidate bio by id" do
            bio = VoteSmartFacade.candidate_bio('71547')

            expect(bio).to be_a(Bio)
            expect(bio.age).to eq(70)
            expect(bio.district).to eq("CO")
            expect(bio.gender).to eq("Male")
            expect(bio.name).to eq("John Hickenlooper")
            expect(bio.next_election).to eq("2026")
            expect(bio.photo).to eq("https://static.votesmart.org/canphoto/71547.jpg")
            expect(bio.state).to eq("CO")
            expect(bio.type).to eq("Senator")
            expect(bio.years_in_office).to eq(2)
        end
    end

    describe '#all_ratings' do 
        it 'gets all ratings by zip code' do
            zip = 29617
            data = VoteSmartFacade.all_ratings_for_candidates_in_zip(zip)

            expect(data[0].ratings.aclu).to eq(75)
            expect(data[1].ratings.aclu).to eq(75)
            expect(data[2].ratings.aclu).to eq(11)
        end

        it 'gets all ratings by state' do
            state = "SC"
            data = VoteSmartFacade.all_ratings_for_candidates_in_state(state)

            expect(data[0].ratings.aclu).to eq(100)
            expect(data[1].ratings.aclu).to eq(0)
            expect(data[2].ratings.aclu).to eq(75)
            expect(data[-1].ratings.aclu).to eq(25)
        end
    end

    describe '#with_quiz' do
       it 'returns politicians with comparisons by state' do
            state = "CO"
            quiz =  {
                aclu: "23",
                americans_for_prosperity: "34",
                end_citizens_united: "45",
                national_association_of_police: "56",
                national_education_association: "67",
                national_parks_conservation: "78",
                norml: "89",
                nra: "90",
                numbers_usa: "12",
                planned_parenthood: "23"
              }
            candidate_ids = VoteSmartService.candidates_by_state(state).map{|i| i[:candidateId]}.uniq
            politicians = candidate_ids.map do |candidateId|
                Politician.new(candidateId)
             end
            data = VoteSmartFacade.state_with_quiz(state, quiz)

            expect(data[0]).to be_a Politician
            expect(data[0].compatibility.to_i).to eq(41)
            expect(data[1].compatibility.to_i).to eq(36)
            expect(data[2].compatibility.to_i).to eq(16)
        end

        it 'returns politicians with comparisons by zip' do
            zip = 29617
            quiz = {
                aclu: "23",
                americans_for_prosperity: "34",
                end_citizens_united: "45",
                national_association_of_police: "56",
                national_education_association: "67",
                national_parks_conservation: "78",
                norml: "89",
                nra: "90",
                numbers_usa: "12",
                planned_parenthood: "23"
              }
            candidate_ids = VoteSmartService.candidates_by_zip(zip).map{|i| i[:candidateId]}.uniq
            politicians = candidate_ids.map do |candidateId|
                Politician.new(candidateId)
            end
            data = VoteSmartFacade.zip_with_quiz(zip, quiz)

            expect(data[0]).to be_a Politician
            expect(data[0].compatibility.to_i).to eq(19)
            expect(data[1].compatibility.to_i).to eq(1)
            expect(data[2].compatibility.to_i).to eq(0)
        end
    end
end
