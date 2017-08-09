class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
          password_length: 8..50

  has_one :information
  has_many :users_locations, dependent: :destroy
  has_many :their_locations, through: :users_locations, source: :location

  def admin?
    return self.information.role == 'admin'
  end

  def super_user?
    return self.information.role == 'super'
  end

  def see_all?
    return self.admin? || self.super_user?
  end

  def organization
    return self.their_locations.first.organization
  end

  def locations
    if self.super_user?
      return self.organization.locations
    else
      return self.their_locations
    end
  end

  def icon
    if self.admin?
      return nil
    elsif self.super_user?
      return self.locations.first.organization.icon
    else
      return self.locations.first.organization.icon
    end
  end
end
