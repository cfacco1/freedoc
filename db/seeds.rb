require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

25.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

10.times do
  Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: ['marabout','exorciste','chaman','medium','psychiatre'].sample,
    zip_code: Faker::Number.decimal_part(digits:5)
  )
end

10.times do
  City.create!(
    name_town: Faker::Address.city
  )
end