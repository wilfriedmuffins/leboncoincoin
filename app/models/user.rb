class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one_attached :avatar

  has_many :ads, dependent: :destroy

  has_many :sale, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true


  def avatar_size
    avatar.variant(resiez: "150x150!").processed
  end
  

end
