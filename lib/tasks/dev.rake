desc "Fill the database tables with some sample data"
task sample_data: :environment do
  require 'faker'

  starting = Time.now

  User.delete_all
  InterestedBuyer.delete_all
  Photo.delete_all
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
      address: Faker::Address,
      description: Faker::Quote,
      furniture_amt: furntiture_amt.sample,
      num_bath: rand(1..5),
      num_bdrms: rand(1..5),
      price: rand(1000..5000),
      user_id: user.id 
    )

    p user.errors.full_messages
  end

  apartments = Apartment.all

  apartments.each do |apartment|
    photo = Photo.create(
      picture: "/#{rand(1..10)}.jpeg",
      apartment_id: apartment.id
    )

    p photo.errors.full_messages


    rand(0..8).times do 
      interested_buyer = InterestedBuyer.create(
        email: "#{Faker::Name}@example.com",
        name: Faker::Name
        phone_number: rand(100000000..999999999),
        apartment_id: apartment.id
      )
    end
  end 

  

end