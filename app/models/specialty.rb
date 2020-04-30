class Specialty < ApplicationRecord
	has_many :dealwithits
    has_many :doctors, through: :dealwithits
end
