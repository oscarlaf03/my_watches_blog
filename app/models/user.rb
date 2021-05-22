class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :handle, presence: true, handle: true, length: {in: 3..19}
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  has_many :posts

  def name
    "#{first_name} #{last_name}"
  end
end
