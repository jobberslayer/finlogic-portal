class Statement < ApplicationRecord
  belongs_to :organization
  belongs_to :location

  TYPE_INCOME = 'income'
  TYPE_BALANCE = 'balance'
  TYPE_BUDGET = 'budget'
  TYPE_FORECAST = 'forecast'
  TYPE_STOPLIGHT = 'stoplight'

  def self.latest_income(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_INCOME).order('created_at').last
  end

  def self.latest_balance(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_BALANCE).order('created_at').last
  end

  def self.latest_budget(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_BUDGET).order('created_at').last
  end

  def self.latest_forecast(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_FORECAST).order('created_at').last
  end

  def self.latest_stoplight(organization)
    return Statement.where(organization_id: organization.id, statement_type: TYPE_STOPLIGHT).order('created_at').last
  end

  def self.find_by_path(array, path, key)
    a = array.select {|x| x[:path] == path && x[:key] == key}
    return a.first
  end

  def self.find_by_key(array, key)
    a = array.select {|x| x[:key] == key}
    return a.first
  end

  def to_stoplight
    return JSON.parse(self.statement_data)
  end

  def to_aoii01(skip_zero_amts=false, condense=false)
    mydata = []
    s_data = JSON.parse(self.statement_data)
    s_data.each do |h|
      next if skip_zero_amts && !h["amount"].nil? && h["amount"].to_f == 0.0
      next if condense && h["col"] >= 4 && !h["key"].downcase.starts_with?('total')
      myhash = {
        key:    h["key"],
        col:    h["col"].to_i,
        amount: h["amount"].nil? ? nil : h["amount"].to_f,
        indent: h["indent"].to_i,
        path:   h["path"]
      }
      mydata.push myhash
    end

    return mydata

  end

end
