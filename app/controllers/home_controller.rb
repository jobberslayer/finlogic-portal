class HomeController < ApplicationController
  def index
    if current_user.admin?
      redirect_to organizations_path
    else
      redirect_to aoii_income_statement_path('mine')
    end
  end
end
