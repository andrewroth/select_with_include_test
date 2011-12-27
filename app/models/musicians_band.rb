class MusiciansBand < ActiveRecord::Base
  belongs_to :band
  belongs_to :musician
end
