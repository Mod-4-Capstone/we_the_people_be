require 'rails_helper'

RSpec.describe VoteSmartFacade do
    describe 'specific candidate ratings' do
        it 'will return all the ratings of a certain candidate', :vcr do
            ratings = VoteSmartFacade.specific_candidate_ratings('110942')
            expect(ratings.aclu).to eq(100)
            expect(ratings.americans_for_prosperity).to eq(100)
            expect(ratings.end_citizens_united).to eq(100)
            expect(ratings.national_assocation_of_police).to eq(80)
            expect(ratings.national_education_assocation).to eq(100)
            expect(ratings.national_parks_conservation).to eq(100)
            expect(ratings.norml).to eq(92)
            expect(ratings.nra).to eq(7)
            expect(ratings.numbers_usa).to eq(13)
            expect(ratings.planned_parenthood).to eq(100)
        end
    end
    describe '#candidate_bio' do
        it "will return candidate bio by id", :vcr do
            bio = VoteSmartFacade.candidate_bio('71547')
            expect(bio).to be_a(Bio)
        end
    end
end
