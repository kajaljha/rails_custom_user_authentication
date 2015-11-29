class UsersController < ApplicationController

before_filter :signed_in_user, only: [:edit, :contact]

def show
@user = User.find(params[:id])
end
def new
@user = User.new
end

def create
@user = User.new params[:user]
if @user.save
flash[:success] = "Welcome to the Sample App!"
redirect_to @user
else
render 'new'
end
end

def edit
@user = User.find(params[:id])
end
end



