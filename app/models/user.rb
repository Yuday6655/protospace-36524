class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comments, dependent: :destroy
  has_many :prototypes

  validates :name, presence: true
  validates :password, length: {  minimum: 5 }
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
end
