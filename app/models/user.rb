class User < ApplicationRecord

  has_many bookings
  has_many cars

  # FIRST_NAME & LAST_NAME VALIDATES PRESESNCE TRUE

  validates :first_name, :last_name, presence: :true

  #VALIDATES EMAIL

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  # PASSWORD VALIDATION

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

  validates :password,
  presence: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  on: :create

  validates :password,
  allow_nil: true,
  length: { in: Devise.password_length },
  format: { with: PASSWORD_FORMAT },
  confirmation: true,
  on: :update

  # PHONE NUMBER VALIDATION

  validates :phone,:presence => true,
   :numericality => true,
    :length => { :minimum => 10, :maximum => 15 }

end
