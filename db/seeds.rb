User.find_or_create_by!(email: 'admin@asmbv.mc') do |user|
  user.password = 'password'
  user.password_confirmation = 'password'
  user.admin = true
end

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
  Player.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone: Faker::PhoneNumber.cell_phone_in_e164,
    user: user
  )
end
