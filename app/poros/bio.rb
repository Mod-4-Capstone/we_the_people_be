class Bio
  attr_reader :ratings, :name, :state, :age, :district, :photo, :gender, :years_in_office, :next_election
  def initialize(data)
      @name = data[:candidate][:firstName] + " " + data[:candidate][:lastName]
      @state = data[:office][:stateId]
      @age = get_age(data[:candidate][:birthDate])
      @district = data[:office][:districtId]
      @photo = data[:candidate][:photo]
      @gender = data[:candidate][:gender]
      @years_in_office = time_in_office(data[:office][:firstElect])
      @next_election = next_up(data[:office][:title], data[:office][:lastElect])
  end

  def get_age(bday)
    now = Time.now.utc.to_date.year
    now - bday[-4..-1].to_i
  end

  def senator?(title)
    title == "Senator"
  end

  def next_up(title, date)
    if senator?(title)
      return (date[-4..-1].to_i + 6).to_s
    else
      return (date[-4..-1].to_i + 2).to_s
    end
  end

  def time_in_office(date)
    now = Time.now.utc.to_date.year
    now - date[-4..-1].to_i
  end
end
