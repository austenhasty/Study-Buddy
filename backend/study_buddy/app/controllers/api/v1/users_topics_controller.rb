class Api::V1::UsersTopicsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    if current_user
      users_topics = current_user.users_topics
    else
      users_topics = UsersTopic.all
    end
    render json: users_topics
  end

  def create
    users_topic = UsersTopic.new(user_topic_params)
    if users_topic.save
      render json:{ user: UsersTopicSerializer.new(users_topic) }, status: :created
    else
      render json: { error: 'failed to create user topic relationship' }, status: :not_acceptable
    end
  end

  private

  def user_topic_params
    params.require(:users_topic).permit(:user_id, :topic_id)
  end

end
