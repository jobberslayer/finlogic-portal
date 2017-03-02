class Information < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def name
    return "#{self.fname} #{self.lname}"
  end
end
