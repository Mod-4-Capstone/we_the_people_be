require 'rails_helper'

RSpec.describe "Congress Requests" do
  describe ".zipcode_with_quiz", :vcr do
    it "happy path sends representatives from a zip" do
      body = {
      id: 42,
      age: "20-29",
      state: "CA",
      zipcode: "95060",
      aclu: "100",
      americans_for_prosperity: "20",
      end_citizens_united: "80",
      national_association_of_police: "80",
      national_education_association: "100",
      national_parks_conservation: "100",
      norml: "92",
      nra: "7",
      numbers_usa: "0",
      planned_parenthood: "100"
      }
      keys = []
      post '/api/v2/zipcode_with_quiz', params: body

      expect(response.status).to eq(200)
      response_data = JSON.parse(response.body, symbolize_names: true)[:politicians][:data]
      expect(response_data).to be_a(Array)
      expect(response_data.first[:type]).to eq('representative')
      expect(response_data.first[:attributes]).to be_a(Hash)
      expect(response_data.first[:attributes][:biography]).to be_a(Hash)
      expect(response_data.first[:attributes][:biography]).to include(Hash)
    end
  end


end
