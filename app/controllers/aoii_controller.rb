class AoiiController < ApplicationController
  def income_statement
    id = nil
    if current_user.admin?
      id = params['id']
    else
      id = current_user.information.location
    end
    @location = Location.find_by(name: id.titlecase)

    if @location.nil?
      flash.now[:alert]= 'Not a valid location'
    else
      @data = IncomeStatement.where(location_id: @location.id).order('created_at').last
    end
  end
end
