class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def show
  end
end