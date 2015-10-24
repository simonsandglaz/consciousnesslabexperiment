class Result < ActiveRecord::Base
  belongs_to :participant
  attr_accessible :participant_id, :stimuli_number, :start_time, :end_time, :answer, :participant_answer
end
