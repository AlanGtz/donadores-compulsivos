class ReceiversController < ApplicationController
  def show
    @receiver = Receiver.find(params[:id])

    @bloodtype = @receiver.bloodtype

    case @bloodtype
      when 'O+'
        @bloodtypes = ['O+']
      when 'O-'
        @bloodtypes = ['O-']
      when 'A+'
        @bloodtypes = ['A+']
      when 'A-'
        @bloodtypes = ['A-']
      when 'B+'
        @bloodtypes = ['B+']
      when 'B-'
        @bloodtypes = ['B-']
      when 'AB+'
        @bloodtypes = ['AB+']
      when 'AB-'
        @bloodtypes = ['AB-']
    end
  end

  def new
  end

  def create
    @receiver = Receiver.new(receiver_params)

    if @receiver.save
      redirect_to @receiver
    else
      flash.now[:error] = 'Por favor, revisa que todos los campos sean llenados correctamente.'
      render 'receivers/new'
    end
  end

  def bloodtypes
    @bloodtypes = Receiver.params[:bloodtype]
    @bloodtypes = compatible
  end

  private
    def receiver_params
      params.require(:receiver).permit(:name,:bloodtype,:donationtype,
        :units,:timestart,:timeend,:timestart2,:timeend2,:hospital,
        :street,:number,:colony,:zipcode,:state,:city,:contact,:phone,
        :contact2,:phone2,:days => [])
    end
end
