class Api::V1::NotecardsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy]

  def index
    notecards = Notecard.all
    render json: notecards
  end

  def show
    notecard = Notecard.find_by(id: params[:id])
    render json: NotecardSerializer.new(notecard)
  end

  def create
    notecard = Notecard.new(notecard_params)
    if notecard.save
      render json: { notecard: NotecardSerializer.new(notecard) }, status: :created
    else
      render json: { error: 'failed to create notecard' }, status: :not_acceptable
    end
  end

  def update
    notecard = Notecard.find_by(id: params[:id])
    if notecard.update(notecard_params)
      render json: NotecardSerializer.new(notecard)
    else
      puts error.full_message
    end
  end

  def destroy
    notecard = Notecard.find_by(id: params[:id])
    if notecard.destroy
      render json: NotecardSerializer.new(notecard)
    else
      puts error.full_message
    end
  end

  private

  def notecard_params
    params.require(:notecard).permit(:term, :definition)
  end

end
