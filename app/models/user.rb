class User < ActiveRecord::Base
  has_many :memberships
  has_many :organisation_memberships
  has_many :plannings
  has_many :shifts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end