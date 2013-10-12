json.array!(@users) do |user|
  json.extract! user, :firstname, :lastname, :phoneNumber, :groupRecreation, :groupRecipe, :groupCoupon, :userNote
  json.url user_url(user, format: :json)
end