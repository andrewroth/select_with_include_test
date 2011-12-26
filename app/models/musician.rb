class Musician < ActiveRecord::Base
  has_many :bands, :through => :musicians_bands
end
