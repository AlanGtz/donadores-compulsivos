class DonateBloodController < ApplicationController
  def donate
  end

  def donate_blood
  	name = params[:name]
  	city = params[:city]
  	email = params[:email]
  	ContactMailer.mailer(name, city, email).deliver_now
  end
end
