require 'rails_helper'

describe "Politician API" do
  xit "happy path sends a politician report", :vcr do
    quiz = {
    id: 42,
    age: "20-29",
    state: "CA",
    zipcode: "95060",
    aclu: "100",
    americans_for_prosperity: "20",
    end_citizens_united: "80",
    national_assocation_of_police: "80",
    national_education_assocation: "100",
    national_parks_conservation: "100",
    norml: "92",
    nra: "7",
    numbers_usa: "0",
    planned_parenthood: "100"
  }
    post '/api/v1/zipcode_with_quiz', params: quiz

    expect(response.status).to eq(200)
    response_data = JSON.parse(response.body, symbolize_names: true)
    response = response_data[:data]

    expect(response.first[:type]).to eq('report')
    expect(response.first[:id]).to eq(nil)
  end
end
