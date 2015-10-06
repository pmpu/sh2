class WelcomeController < ApplicationController


  def index
      users = AdminUser.all
  end
end
