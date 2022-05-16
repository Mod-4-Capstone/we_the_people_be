require 'rails_helper'

RSpec.describe Politician do
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
              firstElect: "11/03/2020",
              lastElect: "11/03/2020",
              nextElect: "",
              districtId: "20447",
              stateId: "CO"
            }
    }

    politician = Politician.new(71547)
    expect(politician.name).to eq("John Hickenlooper")
    expect(politician.state).to eq("CO")
    expect(politician.age).to eq(70)
    expect(politician.district).to eq("20447")
    expect(politician.picture).to eq("https://static.votesmart.org/canphoto/71547.jpg")
    expect(politician.gender).to eq("Male")
    expect(politician.years_in_office).to eq(2)
    expect(politician.next_election).to eq("2026")
  end
end
