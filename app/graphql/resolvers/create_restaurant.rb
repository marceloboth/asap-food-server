class Resolvers::CreateRestaurant < GraphQL::Function
  argument :name, !types.String
  argument :description, !types.String

  type Types::RestaurantType

  def call(_obj, args, _ctx)
    Restaurant.create!(
      name: args[:name],
      description: args[:description],
    )
  end
end
