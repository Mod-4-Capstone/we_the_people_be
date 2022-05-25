# typed: true
class Bio
  extend T::Sig
  attr_reader :ratings, :name, :state, :age, :district, :photo, :gender, :years_in_office, :next_election, :congressional_type, :party
  def initialize(data)
      @name = data[:candidate][:firstName] + " " + data[:candidate][:lastName]
      @congressional_type = find_data(data[:office], :title)
      @state = find_data(data[:office], :stateId)
      @age = get_age(data[:candidate][:birthDate])
      @district = @congressional_type == "Senator" ? @state : find_data(data[:office], :district)
      @photo = data[:candidate][:photo]
      @gender = data[:candidate][:gender]
      @years_in_office = time_in_office(find_data(data[:office], :firstElect))
      @next_election = next_up(find_data(data[:office], :lastElect))
      @party = find_data(data[:office], :parties) == "Democratic" ? "Democrat" : "Republican"
  end

  sig { params(where: Hash, attribute: Symbol).returns(String) }
  def find_data(where, attribute)
    begin
      where[attribute]
    rescue TypeError
      where.first[attribute]
    rescue NoMethodError
      nil
    end
  end

  sig { params(bday: String).returns(Integer) }
  def get_age(bday)
    now = Time.now.utc.to_date.year
    now - bday[-4..-1].to_i
  end

  sig { params(date: String).returns(String) }
  def next_up(date)
    if date.empty?
      return 'unknown'
    elsif @congressional_type == 'Senator'
      return (date[-4..-1].to_i + 6).to_s
    elsif @congressional_type == "Representative"
      return (date[-4..-1].to_i + 2).to_s
    else
      now = Time.now.utc.to_date.year.to_s
    end
  end

  sig { params(date: String).returns(Integer) }
  def time_in_office(date)
    now = Time.now.utc.to_date.year
    return now - date[-4..-1].to_i
  end
end
