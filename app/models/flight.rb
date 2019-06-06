class Flight < ApplicationRecord
	has_many :seats, dependent: :destroy
end
