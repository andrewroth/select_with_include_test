class Band < ActiveRecord::Base
  has_many :musicians_bands
  has_many :musicians, :through => :musicians_bands
end
