class Organization < ApplicationRecord
  has_many :statements
  has_many :locations
  has_many :users

  def name=(val)
    write_attribute(:name, val.upcase)
  end

  def self.by_name(org_name)
    Organization.find_by(name: org_name.upcase)
  end
end
