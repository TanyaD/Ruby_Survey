class SurveysController < ApplicationController
  def index
    session[:views] ||= 0
  end

  def process_survey
    session[:views] = session[:views]+1
    @newsurvey=Surveydisplay.create(name:params[:name],location:params[:location],language:params[:language], comment:params[:comment])
    puts @newsurvey
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
    session[:result]=params[:Surveydisplay]
    redirect_to '/new'
  end

  def new
    @surveys = Surveydisplay.all
    @result = Surveydisplay.last

  end
  protect_from_forgery with: :exception


end
