class SponsorsController < ApplicationController
  def new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
 
    @sponsor.save
    redirect_to new_sponsor_path
    flash[:success] = 'Enviado correctamente, te contactaremos pronto.'
  end

  private
    def sponsor_params
      params.require(:sponsor).permit(:name, :phone, :email, :state, :city, :organization)
    end
end
