class WelcomeController < ApplicationController
  def index
  end
  def hello
    @name = params[:name] || 'Rails girls'
  end
end
