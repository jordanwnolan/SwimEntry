class SwimEvent < ActiveRecord::Base
  has_many :swimmer_entries
  has_many :swimmers, through: :swimmer_entries, source: :swimmer
end
