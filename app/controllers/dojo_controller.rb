class DojoController < ApplicationController
  @@count = 0
  def index
    render "index"
  end

  def post_result
    @@count += 1
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    redirect_to "/result"
  end

  def result
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{@@count} times now."
    render "result"
  end
end
