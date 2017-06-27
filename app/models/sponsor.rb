class Sponsor < ActiveRecord::Base
  validates :name, :phone, :email, :state, :city, :organization, presence: {message: 'Uno o más campos están vacíos.'}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
