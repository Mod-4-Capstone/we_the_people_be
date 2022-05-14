class VoteSmartService
  def self.conn
    Faraday.new(url: 'http://api.votesmart.org/') do |f|
      f.params['key'] = ENV['vote_smart_key']
      f.params["o"] = "JSON"
    end
  end

  def self.candidates_by_zip(zip)
    response = conn.get("Officials.getByZip?zip5=#{zip}")
    JSON.parse(response.body, symbolize_names: true)[:candidateList][:candidate].filter {|c| c[:officeTypeId] == "C"}
  end

  def self.candidates_by_state(state)
    response = conn.get("Officials.getByOfficeTypeState?officeTypeId=C&stateId=#{state}")
    JSON.parse(response.body, symbolize_names: true)[:candidateList][:candidate].filter {|c| c[:officeTypeId] == "C"}
  end
end