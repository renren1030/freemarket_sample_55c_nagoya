class Address < ApplicationRecord
  belongs_to :user, optional: true

  enum prefecture: {
    "---------": 0,北海道: 1,青森県: 2,岩手県: 3,宮城県: 4,秋田県: 5,山形県: 6,福島県: 7,
    茨城県: 8,栃木県: 9,群馬県: 10,埼玉県: 11,千葉県: 12,東京都: 13,神奈川県: 14,
    新潟県: 15,富山県: 16,石川県: 17,福井県: 18,山梨県: 19,長野県: 20,
    岐阜県: 21,静岡県: 22,愛知県: 23,三重県: 24,
    滋賀県: 25,京都府: 26,大阪府: 27,兵庫県: 28,奈良県: 29,和歌山県: 30,
    鳥取県: 31,島根県: 32,岡山県: 33,広島県: 34,山口県: 35,
    徳島県: 36,香川県: 37,愛媛県: 38,高知県: 39,
    福岡県: 40,佐賀県: 41,長崎県: 42,熊本県: 43,大分県: 44,宮崎県: 45,鹿児島県: 46,沖縄県: 47
  }

  validates :last_name,               presence: true
  validates :first_name,              presence: true
  validates :last_name_kana,          presence: true
  validates :first_name_kana,         presence: true
  # validates :phone_number,            presence: true
  # validates :zipcode,                 presence: true
  # validates :prefecture,              presence: true
  # validates :city,                    presence: true
  # validates :address,                 presence: true
  # validates :building,                presence: true
  # validates :authorization_token,     presence: true, on:  :save_step2_to_session
  # validates :security_code,           presence: true, on:  :save_step2_to_session
  # validates :expiration_date_month,   presence: true, on:  :save_step2_to_session
  # validates :expiration_date_year,    presence: true, on:  :save_step2_to_session
end
