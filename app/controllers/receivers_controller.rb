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

  private
    def receiver_params
      params.require(:receiver).permit(:name,
        :bloodtype,:donationtype,:units,params[:receiver]['timestart(4i)'].to_i,
        params[:receiver]['timeend(4i)'].to_i,params[:receiver]['timestart2(4i)'].to_i,
        params[:receiver]['timeend2(4i)'].to_i,:days,:hospital,:street,:number,
        :colony,:zipcode,:state,:city,:contact,:phone,:contact2,:phone2)
    end
end
