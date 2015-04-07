class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    Author.find(params[:id]).update_attributes(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to "/authors"
  end

  def create
    Author.create(first_name: params[:first_name], last_name: params[:last_name])

    redirect_to "/authors"
  end

end
