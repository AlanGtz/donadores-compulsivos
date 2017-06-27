class Contact < ActiveRecord::Base
  validates :name, :subject, :phone, :email, :message, presence: {message: 'Uno o más campos están vacíos.'}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
