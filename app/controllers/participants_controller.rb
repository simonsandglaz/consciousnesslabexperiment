class ParticipantsController < ApplicationController
  def index
    @participants = Particpant.all
  end

  def show
    @participant = Particpant.find_by_id(params[:id])
  end

  def update
    @participant = Participant.find_by_id(params[:id])
    @participant.update_attributes(params[:participant])
    @participant.save
    respond_to do |format|
      format.json {render :json => @participant.to_json}
    end
  end
 
  def create
    @participant = Participant.new(params[:participant])
    @participant.save
    respond_to do |format|
      format.json {render :json => @participant.to_json}
    end
  end
end
