class User < ApplicationRecord

  validates :username,
    presence: true,
    uniqueness: true,
    length: { minimum: 3, max: 30 }

  validates :password,
    presence: true,
    length: { minimum: 8, max: 50 }

end
