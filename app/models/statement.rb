class Statement < ApplicationRecord
  belongs_to :location

  TYPE_INCOME = 'income'
  TYPE_BALANCE = 'balance'

  def self.latest_income(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_INCOME).order('created_at').last
  end

  def self.latest_balance(location)
    return Statement.where(location_id: location.id, statement_type: TYPE_BALANCE).order('created_at').last
  end
  
  def to_array(skip_zero_amts=false, remove_empty_headers=false, condense=false)
    # no sense doing the rest of this if condensed is on
    if condense
      remove_empty_headers = false
    end

    mydata = [] 
    (1..Statement.columns.size).each do |x|
      break if self["key#{x}"].blank?
      next if skip_zero_amts && self["amount#{x}"] == 0.0
      next if condense && self["col#{x}"] >= 4 && !self["key#{x}"].downcase.starts_with?('total')
      myhash = {
        key:    self["key#{x}"],
        col:    self["col#{x}"].to_i,
        amount: self["amount#{x}"],
      }
      mydata.push myhash
    end

    if remove_empty_headers
      i=0
      filtered = []
      mydata.each do |h|
        next_entry = i + 1
        if h[:amount].blank? && mydata[next_entry][:col] <= h[:col]
          i += 1
          next
        else
          filtered.push h
        end
        i += 1
      end
      return filtered
    else
      return mydata
    end
  end

end
