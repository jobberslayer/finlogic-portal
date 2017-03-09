class HomeController < ApplicationController
  def index
    if current_user.admin?
      redirect_to organizations_path
    else
      org = current_user.information.location.organization.name
      loc = current_user.information.location.name
      redirect_to all_statement_path(org, loc)
    end
  end
end
