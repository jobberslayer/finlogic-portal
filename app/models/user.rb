class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
          password_length: 8..50

  has_one :information

  def admin?
    return self.information.role == 'admin'
  end

  def super_user?
    return self.information.role == 'super'
  end

  def see_all?
    return self.admin? || self.super_user?
  end
end
