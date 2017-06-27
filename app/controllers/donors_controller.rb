class DonorsController < ApplicationController
  def show
    @donor = Donor.find(params[:id])
  end

  def donors
  end

  def create
  	@donor = Donor.new(donor_params)

  	@donor.save
  	redirect_to @donor
  end

  private
  	def donor_params
  	  params.require(:donor).permit(:age,:weight,:disease,:operation,:tattoo,
  	  	                            :pregnancy,:sex,:vaccine,:hepatitis,:result)
  	end
end
