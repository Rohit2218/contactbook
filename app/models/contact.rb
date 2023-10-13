class Contact < ApplicationRecord
validates :first_name, presence: {message: 'First Name is required'}
end
