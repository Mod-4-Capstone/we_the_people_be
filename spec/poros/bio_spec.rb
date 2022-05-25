# typed: false
require 'rails_helper'

RSpec.describe Bio, :vcr do
  it "can make a politician object" do
    data = {
            candidate: {
              photo: "https://static.votesmart.org/canphoto/71547.jpg",
              firstName: "John",
              lastName: "Hickenlooper",
              birthDate: "02/07/1952",
              gender: "Male"
            },
            office: {
              title: "Senator",
              firstElect: "11/03/2020",
              lastElect: "11/03/2020",
              nextElect: "",
              districtId: "20447",
              stateId: "CO"
            }
    }

    politician = Bio.new(data)
    expect(politician.name).to eq("John Hickenlooper")
    expect(politician.state).to eq("CO")
    expect(politician.age).to eq(70)
    expect(politician.district).to eq("CO")
    expect(politician.photo).to eq("https://static.votesmart.org/canphoto/71547.jpg")
    expect(politician.gender).to eq("Male")
    expect(politician.years_in_office).to eq(2)
    expect(politician.next_election).to eq("2026")
  end
end
