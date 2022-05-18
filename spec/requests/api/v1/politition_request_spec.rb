require 'rails_helper'

describe "Politician API" do
  it "happy path sends a politician report", :vcr do
    body = {
    id: 42,
    age: "20-29",
    state: "CA",
    zipcode: "95060",
    Q1: "100",
    Q2: "20",
    Q3: "80",
    Q4: "80",
    Q5: "100",
    Q6: "100",
    Q7: "92",
    Q8: "7",
    Q9: "0",
    Q10: "100"
  }
    post '/api/v1/zip_code_with_quiz', params: body

    expect(response.status).to eq(200)
    response_data = JSON.parse(response.body, symbolize_names: true)
    response = response_data[:data]

    expect(response.first[:type]).to eq('report')
    expect(response.first[:id]).to eq(nil)
  end
end
