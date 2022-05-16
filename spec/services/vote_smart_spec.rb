require 'rails_helper'

RSpec.describe VoteSmartService do
  describe 'candidates' do
    it 'can return candidates by zip', :vcr do
      zip = 29617
      response = VoteSmartService.candidates_by_zip(zip)

      expect(response).to be_an Array
      expect(response.count).to eq 3
      expect(response[0]).to be_a Hash
      expect(response[0][:firstName]).to eq("Lindsey")
      expect(response[0][:officeName]).to eq("U.S. Senate")
      expect(response[1][:officeName]).to eq("U.S. Senate")
      expect(response[2][:officeName]).to eq("U.S. House")
    end

    it 'can return candidates by state', :vcr do
      state = 'SC'
      response = VoteSmartService.candidates_by_state(state)

      expect(response).to be_an Array
      expect(response.count).to eq 9
      expect(response[0]).to be_a Hash
      expect(response[0][:firstName]).to eq("James")
    end
  end
  describe 'biographies' do
    # CO Senator Michael Bennet has candidateID 110942
    it 'will return a candidates bio', :vcr do
      response = VoteSmartService.candidate_bio('110942')
      expect(response[:bio]).to include(:generalInfo, :candidate, :office, :election)

      expect(response[:bio][:candidate]).to include(:photo, :firstName, :nickName, :middleName, :preferredName, :lastName, :suffix, :birthDate, :birthPlace, :pronunciation, :gender, :family, :homeCity, :homeState, :religion, :specialMsg)

      expect(response[:bio][:office]).to include(:parties, :title, :firstElect, :lastElect, :stateId, :committee)
    end
    it 'will return a detailed bio', :vcr do
      response = VoteSmartService.detailed_bio('110942')

      expect(response[:bio][:candidate].keys).to eq([:candidateId,:crpId,:photo,:firstName,:nickName,:middleName,:preferredName,:lastName,:suffix,:birthDate,:birthPlace,:pronunciation,:gender,:family,:homeCity,:homeState,:education,:profession,:political,:congMembership,:orgMembership,:religion,:specialMsg])

      expect(response[:bio][:office].keys).to eq([:name, :parties, :title, :shortTitle, :type, :status, :firstElect, :lastElect, :nextElect, :termStart, :termEnd, :district, :districtId, :stateId, :committee])
    end
  end
  describe 'SIG info', :vcr do
    it 'will return all the sig ratings pertaining to an official' do
      response = VoteSmartService.get_all_sig_ratings('110942')
      expect(response[:candidateRating][:rating].count).to eq(998)
      expect(response[:candidateRating][:rating].first).to include(:sigId, :ratingId, :categories, :timespan, :rating, :ratingName, :ratingText)
    end
  end
end
