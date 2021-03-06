
desc 'Save all congressional reps of state into db'
task :get_reps, [:filename] => :environment do
  state_array = %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)
  state_array.each do |state|
    vote_smart_ids = LoadFacade.candidates_in_state(state)
    vote_smart_ids.each do |id|
      begin
      biography_info = LoadFacade.candidate_bio(id)
      biography = Biography.create!(biography_info)
      ratings_info = LoadFacade.specific_candidate_ratings(id)
      puts(id, state)
      ratings = Rating.create(ratings_info)
      social_info = LoadFacade.social_info(id)
      representative_social = RepresentativeSocial.create!(social_info)
      Representative.create!(votesmart_id: id, biography: biography, rating: ratings, representative_social: representative_social)
      rescue 
        retry
      end
    end
  end
end
