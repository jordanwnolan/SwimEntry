class Meet < ActiveRecord::Base
  
  has_many :entries
  has_many :swimmers, through: :entries, source: :swimmer
  has_many :teams, -> { uniq }, through: :swimmers
end
