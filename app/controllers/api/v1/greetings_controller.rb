class Api::V1::GreetingsController < ApplicationController
  def index
    random_greeting = Message.order('RANDOM()').first
    render json: { message: random_greeting.greeting }
  end
end
