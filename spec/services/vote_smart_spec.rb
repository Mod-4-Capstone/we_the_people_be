require 'rails_helper'

RSpec.describe VoteSmartService do
  describe 'candidates' do
    it 'can return candidates by zip' do
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

    it 'can return candidates by state' do
      state = 'SC'
      response = VoteSmartService.candidates_by_state(state)
      require "pry"; binding.pry
      expect(response).to be_an Array
      expect(response.count).to eq 9
      expect(response[0]).to be_a Hash 
      expect(response[0][:firstName]).to eq("James")
    end
  end
end