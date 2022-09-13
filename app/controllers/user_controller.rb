class UserController < ApplicationController
  def index
    @usre = User.all  
  end

  def show
  end

  def edit
  end
end
