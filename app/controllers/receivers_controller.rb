class ReceiversController < ApplicationController
  def show
    @receiver = Receiver.find(params[:id])

    @bloodtype = @receiver.bloodtype

    case @bloodtype
      when 'O+'
        @bloodtypes = ['O+','O-']
      when 'O-'
        @bloodtypes = ['O-']
      when 'A+'
        @bloodtypes = ['A+','A-','O+','O-']
      when 'A-'
        @bloodtypes = ['A-','O-']
      when 'B+'
        @bloodtypes = ['B+','B-','O+','O-']
      when 'B-'
        @bloodtypes = ['B-','O-']
      when 'AB+'
        @bloodtypes = ['AB+','AB-','A+','A-','B+','B-','O+','O-']
      when 'AB-'
        @bloodtypes = ['AB-','A-','B-','O-']
    end
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
end
