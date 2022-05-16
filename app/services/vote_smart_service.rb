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

  def self.candidate_bio(id)
    response = conn.get("CandidateBio.getBio?candidateId=#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.detailed_bio(id)
    response = conn.get("CandidateBio.getDetailedBio?candidateId=#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.get_all_sig_ratings(id)
    response = conn.get("Rating.getCandidateRating?candidateId=#{id}")
    if response.body[-1] != "}"
      # representatives return invalid JSON
      response_body = response.body + '"}]}}'
      parsed = JSON.parse(response_body, symbolize_names: true)
    else 
      parsed = JSON.parse(response.body, symbolize_names: true)
    end
  end
end