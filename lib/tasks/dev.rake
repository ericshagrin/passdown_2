desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now

  User.delete_all
  Apartment.delete_all

  people = Array.new(10) do
    {
      first_name: Faker::Name.first_name
    }
  end

  people << { first_name: "Alice"}
  people << { first_name: "Bob"}
  people << { first_name: "Carol"}
  people << { first_name: "Doug"}

  people.each do |person|
    username = person.fetch(:first_name).downcase

    user = User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username.downcase,
    )

    p user.errors.full_messages
  end

  users = User.all 
  furntiture_amt = ["fully furnished", "partially furnished", "unfurnished"]

  users.each do |user|
    apartment = Apartment.create(
      address: Faker::Address.street_address,
      description: Faker::Quote.famous_last_words,
      furniture_amt: furntiture_amt.sample,
      num_bath: rand(1..6),
      num_bdrms: rand(1..6),
      price: rand(1000..5000),
      user_id: user.id 
    )

    p user.errors.full_messages
  end
end