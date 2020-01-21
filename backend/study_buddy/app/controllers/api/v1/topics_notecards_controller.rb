class Api::V1::TopicsNotecardsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :destroy]

  def index
    topics_notecards = TopicsNotecard.all
    render json: topics_notecards
  end

def destroy
  topics_notecard = TopicsNotecard.find(params[:id])
  if topics_notecard.destroy
    render json: { message: "Successfully deleted!" }
  else
    render json: {error: topics_notecard.errors }
  end
end


  private

  def topics_notecards_params
    params.require(:topics_notecard).permit(:topic_id, :notecard_id)
  end
end
