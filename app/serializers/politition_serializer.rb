class PoliticianSerializer
  include JSONAPI::Serializer

  set :id
  set_type "report"

  attributes :rating, :bio, :user_ratings, :opinion_delta
end
