class SponsorsController < ApplicationController
  def new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
 
    if @sponsor.save
      redirect_to new_sponsor_path
      flash[:success] = 'Enviado correctamente, te contactaremos pronto.'
    else
      flash.now[:error] = 'Por favor, revisa que todos los campos sean llenados correctamente.'
      render 'sponsors/new'
    end
  end

  private
    def sponsor_params
      params.require(:sponsor).permit(:name, :phone, :email, :state, :city, :organization)
    end
end
