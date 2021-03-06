# typed: false
require 'rails_helper'

RSpec.describe "Politician API", :vcr do
  xit "happy path sends a politician report" do
    body = {
    zipcode: "95060",
    id: 42,
    age: "20-29",
    state: "CA",
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
    post '/api/v2/zipcode_with_quiz', params: body

    expect(response.status).to eq(200)
    response_data = JSON.parse(response.body, symbolize_names: true)[:politicians][:data]
    expect(response_data.first[:type]).to eq('report')
    expect(response_data.first[:id]).to eq(nil)
  end
end
