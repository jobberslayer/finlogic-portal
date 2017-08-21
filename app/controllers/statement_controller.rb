class StatementController < ApplicationController
  def index
    org = nil
    loc = nil
    organization = nil
    @locations = nil

    if current_user.admin?
      org = params['organization']
    else
      org = current_user.organization.name
    end
    loc = params['location']
    organization = Organization.by_name(org)
    if organization.nil?
      flash.now[:alert] = "Not a valid organization [#{org}]"
      return
    end
    if current_user.admin?
      @locations = organization.locations
    else
      @locations = current_user.locations
    end

    @location = Location.by_name(org, loc)
    @organization = organization

    unless current_user.see_all? || current_user.locations.include?(@location)
      redirect_to root_path
      return
    end

    if @location.blank?
      redirect_to(root_path)
      return
    elsif @organization.blank?
      redirect_to(root_path)
      return
    else
      is = Statement.latest_income(@location)
      bs = Statement.latest_balance(@location)
      bu = Statement.latest_budget(@location)
      fc = Statement.latest_forecast(@location)
      sl = Statement.latest_stoplight(organization)
      if bs.nil?
        flash.now[:alert] = "No balance statement for #{org.titleize} - #{loc.titleize}"
      else
        @bs_time_period = bs.time_period
        @bs_data = bs.send("to_#{bs.statement_version}", true, false)
      end

      if is.nil?
        flash.now[:alert] = "No income statement for #{org.titleize} - #{loc.titleize}"
      else
        @is_time_period = is.time_period
        @is_data = is.send("to_#{is.statement_version}", true, false)
      end

      unless bu.nil?
        @bu_data = bu.send("to_#{bu.statement_version}", true, false)
      end

      unless fc.nil?
        @fc_data = fc.send("to_#{fc.statement_version}", true, false)
      end

      unless sl.nil? || !current_user.see_all?
        @sl_time_period = sl.time_period
        @sl_data = sl.to_stoplight
      end
    end
  end

  def income
    request.format = :pdf
    build_statement(Statement::TYPE_INCOME)
    respond_to do |format|
      format.pdf do
        render pdf: "#{@location.organization.name}-#{@location.name}-#{@time_period}-IncomeStatement" #, show_as_html: true
      end
    end
  end

  def balance
    request.format = :pdf
    build_statement(Statement::TYPE_BALANCE)
    respond_to do |format|
      format.pdf do
        render pdf: "#{@location.organization.name}-#{@location.name}-#{@time_period}-BalanceSheet" #, show_as_html: true
      end
    end
  end

  def build_statement(s_type)
    org = nil
    loc = nil
    organization = nil
    if current_user.see_all?
      if current_user.admin?
        org = params['organization']
      else
        org = current_user.organization.name
      end
      loc = params['location']
      organization = Organization.by_name(org)
      if organization.nil?
        flash.now[:alert] = "Not a valid organization [#{org}]"
        return
      end
    else
      loc = current_user.locations.first.name
      organization = current_user.organization
      org = organization.name
    end
    @location = Location.by_name(org, loc)
    @organization = organization

    if @location.blank?
      redirect_to(root_path)
      return
    elsif @organization.blank?
      redirect_to(root_path)
      return
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
      @data = s.send("to_#{s.statement_version}", true, false)

      unless bu.nil?
        @bu_data = bu.send("to_#{bu.statement_version}", true, false)
      end
      unless fc.nil?
        @fc_data = bu.send("to_#{fc.statement_version}", true, false)
      end
    end
  end
end
