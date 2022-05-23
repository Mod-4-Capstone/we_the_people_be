desc 'Set test data'
task :get_reps_test, [:filename] => :environment do
  Rails.env = "test"
  state_array = %w(AL AK)
  state_array.each do |state|
    vote_smart_ids = LoadFacade.candidates_in_state(state)
    vote_smart_ids.each do |id|

        biography_info = LoadFacade.candidate_bio(id)
        biography = Biography.create!(biography_info)
        ratings_info = LoadFacade.specific_candidate_ratings(id)
        puts(id, state)
        ratings = Rating.create(ratings_info)
        social_info = LoadFacade.social_info(id)
        representative_social = RepresentativeSocial.create!(social_info)
        Representative.create!(votesmart_id: id, biography: biography, rating: ratings, representative_social: representative_social)
      
    end
  end
end
