Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :restaurants, !types[Types::RestaurantType] do
    description "Return all restaurants"
    resolve ->(obj, args, ctx) {
      Restaurant.all
    }
  end

  field :restaurant, Types::RestaurantType do
    description "Find a restaurant by ID"

    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Restaurant.find(args[:id])
    }
  end
end
