class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

  has_many :creditcards, dependent: :destroy
  accepts_nested_attributes_for :creditcards
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
