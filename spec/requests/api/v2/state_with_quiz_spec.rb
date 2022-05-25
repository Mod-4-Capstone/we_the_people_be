# typed: false
require 'rails_helper'

RSpec.describe "Congress Requests" do
  describe ".state_with_quiz" do
    it "happy path sends representatives from a state" do

      body = {
      id: 42,
      age: "20-29",
      state: "AL",
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

      post '/api/v2/state_with_quiz', params: body

      expect(response.status).to eq(200)
      response_data = JSON.parse(response.body, symbolize_names: true)[:politicians][:data]
      expect(response_data).to be_a(Array)
      expect(response_data.first[:type]).to eq('representative')
      expect(response_data.first[:attributes]).to be_a(Hash)
      expect(response_data.first[:attributes][:biography]).to be_a(Hash)
      expect(response_data.first[:attributes][:biography]).to include(:age,
                        :congressional_type,
                        :district,
                        :gender,
                        :id,
                        :name,
                        :next_election,
                        :party,
                        :photo,
                        :representative_id,
                        :state,
                        :years_in_office)
      expect(response_data.first[:attributes][:rating]).to be_a(Hash)
      expect(response_data.first[:attributes][:rating]).to include(:id,
                        :planned_parenthood,
                        :americans_for_prosperity,
                        :aclu,
                        :end_citizens_united,
                        :national_education_association,
                        :national_association_of_police,
                        :national_parks_conservation,
                        :nra,
                        :numbers_usa,
                        :norml,
                        :representative_id)
      expect(response_data.first[:attributes][:representative_social]).to be_a(Hash)
      expect(response_data.first[:attributes][:representative_social]).to include(:id,
                        :website,
                        :contact_page,
                        :twitter,
                        :representative_id)
      expect(response_data.first[:attributes][:user_comparison]).to be_a(Hash)
      expect(response_data.first[:attributes][:user_comparison]).to include(:planned_parenthood,
                        :americans_for_prosperity,
                        :aclu,
                        :end_citizens_united,
                        :national_education_association,
                        :national_association_of_police,
                        :national_parks_conservation,
                        :norml,
                        :numbers_usa)
      expect(response_data.first[:attributes]).to have_key(:compatibility)
    end

    it "sad path will return an error if there is no quiz" do
      body = {
      id: 42,
      age: "20-29",
      state: "AL"
      }

      post '/api/v2/state_with_quiz', params: body

      expect(response.status).to eq(400)
      response_data = JSON.parse(response.body, symbolize_names: true)
      expect(response_data[:error]).to eq("please include quiz!")
    end

    it "sad path will return an error if there is no state" do
      body = {
      id: 42,
      age: "20-29",
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

      post '/api/v2/state_with_quiz', params: body

      expect(response.status).to eq(400)
      response_data = JSON.parse(response.body, symbolize_names: true)
      expect(response_data[:error]).to eq("please include state!")
    end
  end
end
