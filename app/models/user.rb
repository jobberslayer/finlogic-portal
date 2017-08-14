class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
          password_length: 8..50

  belongs_to :organization
  has_many :users_locations, dependent: :destroy
  has_many :their_locations, through: :users_locations, source: :location

  def admin?
    return self.role == 'admin'
  end

  def super_user?
    return self.role == 'super'
  end

  def see_all?
    return self.admin? || self.super_user?
  end

  def name
    return "#{self.fname} #{self.lname}"
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
      return self.organization.icon
    else
      return self.organization.icon
    end
  end
end
