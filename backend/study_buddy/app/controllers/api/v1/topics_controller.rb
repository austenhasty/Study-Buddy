class Api::V1::TopicsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :update, :show, :destroy]

  def index
    topics = Topic.all
    render json: topics
  end

  def show
    topic = Topic.find(params[:id])
    render json: TopicSerializer.new(topic)
  end

  def create
    topic = Topic.new(topic_params)
    if topic.save
      render json: {topic: TopicSerializer.new(topic) }, status: :created
    else
      render json: {error: 'failed to create topic'}, status: :not_acceptable
    end
  end

  def update
    topic = Topic.find(params[:id])
    if topic.update(topic_params)
      render json: TopicSerializer.new(topic)
    else
      puts error.full_message
    end
  end


  def destroy
    topic = Topic.find(params[:id])
    if topic.destroy
      render json: TopicSerializer.new(topic)
    else
      puts error.full_message
    end

  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end
end
