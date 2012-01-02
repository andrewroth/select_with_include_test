class Musician < ActiveRecord::Base
  has_many :musicians_band
  has_many :bands, :through => :musicians_band
end
