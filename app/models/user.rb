class User < ApplicationRecord
  include CloudinaryHelper
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :handle, presence: true, uniqueness: true, handle: true, length: {in: 3..19}
  validates :email, presence: true, email: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached  :avatar

  has_many :posts

  def name
    "#{first_name} #{last_name}"
  end

  def to_param
    handle
  end

  def increment_profile_views_by_one
    self.update(profile_views: self.profile_views + 1)
  end

  def avatar_image_url
    avatar.attached? ? cloudinary_url(avatar.key) : "https://cdn3.iconfinder.com/data/icons/communication-232/384/Account_circle-512.png"
  end


end
