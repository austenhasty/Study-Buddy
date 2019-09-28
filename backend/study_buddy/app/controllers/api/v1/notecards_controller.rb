class Api::V1::NotecardsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy, :show_by_topic]

  def index
    notecards = Notecard.all
    render json: notecards
  end

  def show_by_topic
    topic_id = params[:topic_id]
    render json: Notecard.joins(:topics).where(topics: {id: topic_id})
  end


  def create
    notecard = Notecard.new(notecard_params)
    if notecard.save && params[:topic_id]
      topics_notecard = TopicsNotecard.create(topic_id: params[:topic_id], notecard: notecard)
      render json: { notecard: NotecardSerializer.new(notecard) }, status: :created
    else
      render json: { error: 'failed to create notecard' }, status: :not_acceptable
    end
  end

  def update
    notecard= Notecard.find(params[:id])
    if notecard.update(notecard_params)
      render json: {notecard: NotecardSerializer.new(notecard)}
    else
      render json: { error: notecard.errors }
    end
  end

  # def destroy
  #   notecard = Notecard.find(params[:id])
  #   if notecard.destroy
  #     render json: NotecardSerializer.new(notecard)
  #   else
  #     render json: { error: notecard.errors }
  #   end
  # end

  private

  def notecard_params
    params.require(:notecard).permit(:term, :definition, :topic_id)
  end

end
