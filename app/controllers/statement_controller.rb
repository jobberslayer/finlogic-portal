class StatementController < ApplicationController
  def all
    org = nil
    loc = nil
    organization = nil
    if current_user.admin?
      org = params['organization']
      loc = params['location']
      organization = Organization.by_name(org)
      if organization.nil?
        flash.now[:alert] = "Not a valid organization [#{org}]"
        return
      end
    else
      loc = current_user.information.location.name
      org = current_user.information.location.organization.name
    end
    @location = Location.by_name(org, loc)

    if @location.nil?
      flash.now[:alert]= 'Not a valid location'
    else
      is = Statement.latest_income(@location)
      bs = Statement.latest_balance(@location)
      bu = Statement.latest_budget(@location)
      fc = Statement.latest_forecast(@location)
      if bs.nil?
        flash.now[:alert] = "No balance statement for #{org.titleize} - #{loc.titleize}"
      else
        @bs_time_period = bs.time_period
        @bs_data = bs.to_array(true, false)
      end

      if is.nil?
        flash.now[:alert] = "No income statement for #{org.titleize} - #{loc.titleize}"
      else
        @is_time_period = is.time_period
        @is_data = is.to_array(true, false)
      end

      unless bu.nil?
        @bu_data = bu.to_array(true, false)
      end

      unless fc.nil?
        @fc_data = fc.to_array(true, false)
      end
    end
  end

  def income
    build_statement(Statement::TYPE_INCOME)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@location.organization.name}-#{@location.name}-#{@time_period}-IncomeStatement" #, show_as_html: true
      end
    end
  end

  def balance
    build_statement(Statement::TYPE_BALANCE)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@location.organization.name}-#{@location.name}-#{@time_period}-BalanceSheet" #, show_as_html: true
      end
    end
  end

  def build_statement(s_type)
    org = nil
    loc = nil
    organization = nil
    if current_user.admin?
      org = params['organization']
      loc = params['location']
      organization = Organization.by_name(org)
      if organization.nil?
        flash.now[:alert] = "Not a valid organization [#{org}]"
        return
      end
    else
      loc = current_user.information.location.name
      org = current_user.information.location.organization.name
    end
    @location = Location.by_name(org, loc)

    if @location.nil?
      flash.now[:alert]= 'Not a valid location'
    else
      s = nil
      if s_type == Statement::TYPE_INCOME
        s = Statement.latest_income(@location)
        bu = Statement.latest_budget(@location)
        fc = Statement.latest_forecast(@location)
      elsif s_type == Statement::TYPE_BALANCE
        s = Statement.latest_balance(@location)
      else
        flash.now[:alert] = "Unknown report type: #{s_type}"
        return
      end
      if s.nil?
        flash.now[:alert] = "No #{s_type} statement for #{org.titleize} - #{loc.titleize}"
        return
      end
      @time_period = s.time_period
      @data = s.to_array(true, false)

      unless bu.nil?
        @bu_data = bu.to_array(true, false)
      end
      unless fc.nil?
        @fc_data = bu.to_array(true, false)
      end
    end
  end
end
