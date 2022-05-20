class RepresentativeSerializer
  include JSONAPI::Serializer
  attributes :biography, :rating
  attribute :user_comparison do |object, params| 
    object.user_comparison(params)
  end
  attribute :compatibility do |object, params|
    object.compatibility(params)
  end
end
