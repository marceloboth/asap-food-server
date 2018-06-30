Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createRestaurant, function: Resolvers::CreateRestaurant.new
end
