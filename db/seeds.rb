@accounts = ["Savings", "Checkings", "College"]
@bals = [400.00, 300.00, 200.00]

5.times do |i|
  emailStr = "#{Faker::Science.element}#{i}@mail.com"
  user = User.create(
    email: emailStr,
    password: "password",
    first_name: Faker::Dessert.variety,
    last_name: Faker::Emotion.noun
  )
  3.times do 
    Account.create(
      account_name: @accounts.sample,
      balance: @bals.sample,
      user_id: user.id
    )
  end
end

puts "Data seeded"