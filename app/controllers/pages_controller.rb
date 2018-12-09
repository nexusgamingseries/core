class PagesController < ApplicationController
  def home
    @users = User.all.order(name: :asc)
  end
end
