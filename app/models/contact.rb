class Contact < ActiveRecord::Base
  validates :name, :subject, :phone, :email, :message, presence: {message: 'Uno o más campos están vacíos.'}
end
