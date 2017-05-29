class FindDonorsController < ApplicationController
  def find_donors
  end

  def find_form
  	is_for = params[:for]
  	bloodtype = params[:bloodtype]
  	city = params[:city]
  	phone = params[:phone]
  	hospital = params[:hospital]
  	address = params[:address]
  	hours = params[:hours]
  	email = params[:email]
  	ContactMailer.find_blood(is_for, bloodtype, city, phone, hospital, address, hours, email).deliver_now
  end
end
