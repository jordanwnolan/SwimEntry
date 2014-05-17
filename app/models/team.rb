class Team < ActiveRecord::Base

  has_many :coaches
  has_many :swimmers
end
