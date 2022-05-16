class ProPublicaService
    def self.connect
        Faraday.new(
            url: "https://api.propublica.org/congress/v1/", 
            headers: {'X-API-Key': ENV['pro_publica_key']})
    end

    def self.get_reps_in_state(state)
        response = connect.get("members/house/#{state}/current.json")
        parsed = JSON.parse(response.body, symbolize_names: true)
    end

    def self.get_senators_in_state(state)
        response = connect.get("members/senate/#{state}/current.json")
        parsed = JSON.parse(response.body, symbolize_names: true)[:results]
    end

    def self.get_votesmart(id)
        response = connect.get("members/#{id}.json")
        parsed = JSON.parse(response.body, symbolize_names: true).first[:votesmart_id]
    end
end