class Bio
  attr_reader :ratings, :name, :state, :age, :district, :photo, :gender, :years_in_office, :next_election, :type
  def initialize(data)
      @name = data[:candidate][:firstName] + " " + data[:candidate][:lastName]
      @type = data[:office][:title]
      @state = @type == "Senator" ? data[:office][:stateId] : data[:office][:stateId]
      @age = get_age(data[:candidate][:birthDate])
      @district = @type == "Senator" ? @state : data[:office][:district]
      @photo = data[:candidate][:photo]
      @gender = data[:candidate][:gender]
      @years_in_office = @type == 'Senator' ? time_in_office(data[:office][:firstElect]) : data[:office][:firstElect]
      @next_election = @type == 'Senator' ? next_up(@type, data[:office][:lastElect]) : next_up(@type, data[:office][:lastElect])
  end

  def get_age(bday)
    now = Time.now.utc.to_date.year
    now - bday[-4..-1].to_i
  end

  def next_up(title, date)
    if @type == 'Senator'
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
