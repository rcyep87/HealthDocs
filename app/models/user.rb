class User < ActiveRecord::Base

  has_secure_password

  has_many :prescriptions
  has_many :visits
  has_many :steps
  has_many :sleeps
  has_many :exercises
  has_one  :med_coverage

end
