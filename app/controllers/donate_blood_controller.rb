class DonateBloodController < ApplicationController
  def donate
  end

  def donate_blood
  	name = params[:name]
  	city = params[:city]
  	email = params[:email]
  	ContactMailer.donate_blood(name, city, email).deliver_now
  end
end
