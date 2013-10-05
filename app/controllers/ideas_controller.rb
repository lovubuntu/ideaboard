class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(params[:idea])
    if @idea.save
      redirect_to ideas_path
    else
      render 'new'
    end
  end

  def upvote
    idea = Idea.find(params[:id])
    idea.votes = (idea.votes || 0) + 1
    idea.save
    redirect_to ideas_path
  end

  def downvote
    idea = Idea.find(params[:id])
    idea.votes = (idea.votes || 0) - 1
    idea.save
    redirect_to ideas_path
  end

end
