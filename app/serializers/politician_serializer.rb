class PoliticianSerializer
  include JSONAPI::Serializer

  set_id :id
  set_type "report"

  attributes :ratings, :bio, :user_ratings, :compatibility
end
