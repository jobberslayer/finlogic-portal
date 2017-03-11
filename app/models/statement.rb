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
    s_data = JSON.parse(self.statement_data)
    s_data.each do |h|
      next if skip_zero_amts && !h["amount"].nil? && h["amount"].to_f == 0.0
      next if condense && h["col"] >= 4 && !h["key"].downcase.starts_with?('total')
      myhash = {
        key:    h["key"],
        col:    h["col"].to_i,
        amount: h["amount"].nil? ? nil : h["amount"].to_f
      }
      mydata.push myhash
    end

    if remove_empty_headers
      i=0
      filtered = []
      mydata.each do |h|
        next_entry = i + 1
        if !mydata[next_entry].nil? && h[:amount].blank? && mydata[next_entry][:col] <= h[:col]
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
