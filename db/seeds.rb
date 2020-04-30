require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

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

400.times do |ap|
  Appointment.create!(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Time.between_dates(from: Date.today - 1000, to: Date.today + 45, period: :day), city: City.all.sample)
  
  ap += 1
end