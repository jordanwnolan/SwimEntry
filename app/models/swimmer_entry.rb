class SwimmerEntry < ActiveRecord::Base
  belongs_to :meet
  belongs_to :swimmer
  belongs_to :swim_event
end
