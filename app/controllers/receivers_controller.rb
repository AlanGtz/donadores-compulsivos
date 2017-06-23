class ReceiversController < ApplicationController
  def show
    @receiver = Receiver.find(params[:id])
  end

  def new
  end

  def create
    @receiver = Receiver.new(receiver_params)
   
    @receiver.save
    redirect_to @receiver
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

    def compatible
      case @bloodtypes
        when 1
          @bloodtypes = ['O+','O-']
        when 2
          @bloodtypes = ['O-']
        when 3
          @bloodtypes = ['A+','A-','O+','O-']
        when 4
          @bloodtypes = ['A-','O-']
        when 5
          @bloodtypes = ['B+','B-','O+','O-']
        when 6
          @bloodtypes = ['B-','O-']
        when 7
          @bloodtypes = ['AB+','AB-','A+','A-','B+','B-','O+','O-']
        when 8
          @bloodtypes = ['AB-','A-','B-','O-']
      end
    end
end
