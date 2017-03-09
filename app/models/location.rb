class Location < ApplicationRecord
  belongs_to :organization
  has_many :informations
  has_many :aoii_income_statements
  has_many :income_statements
end
