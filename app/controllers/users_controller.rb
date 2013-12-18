class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@use = User.new
  end

  def edit
  end

  def create
  	@user = User.new(params[:users])

  	if @user.save
  		flash[:status] = TRUE
  		flash[:alert] = 'Congratulations! Youhave successfully registered.'
  	else
  		flash[:status] = FALSE
  		flash[:alert] = @user.error.full_messages
  	end

  	redirect_to register_path
  end
end
