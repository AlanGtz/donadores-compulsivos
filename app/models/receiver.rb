class Receiver < ActiveRecord::Base
  validates :name,:bloodtype,:donationtype,:units,:timestart,
            :timeend,:hospital,:street,:number,:colony,
            :zipcode,:state,:city,:contact,:phone, presence: {message: 'Uno o más campos están vacíos.'}
end
