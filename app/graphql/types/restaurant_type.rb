Types::RestaurantType = GraphQL::ObjectType.define do
  name "Restaurant"

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :created_at, !types.String
  field :updated_at, !types.String
end
