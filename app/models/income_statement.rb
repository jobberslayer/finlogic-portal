class IncomeStatement < ApplicationRecord
  belongs_to :location

  def to_array
    mydata = [] 
    (1..IncomeStatement.columns.size).each do |x|
      myhash = {
        key:    self["key#{x}"],
        col:    self["col#{x}"],
        amount: self["amount#{x}"],
      }
      mydata.push myhash
    end

    return mydata
  end
end
