class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy
  has_one :credit_card, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Seller_buyer"
  has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "Seller_buyer"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "Seller_buyer"


end
