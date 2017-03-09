class Location < ApplicationRecord
  belongs_to :organization
  has_many :informations
  has_many :statements

  def name=(val)
    write_attribute(:name, val.upcase)
  end

  def self.by_name(org_name, loc_name)
    org = Organization.by_name(org_name)
    return nil if org.nil?
    location = Location.find_by(name: loc_name.upcase, organization_id: org.id)
  end
end
