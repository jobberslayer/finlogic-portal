class Organization < ApplicationRecord
  has_many :locations

  def name=(val)
    write_attribute(:name, val.upcase)
  end

  def self.by_name(org_name)
    Organization.find_by(name: org_name.upcase)
  end
end
