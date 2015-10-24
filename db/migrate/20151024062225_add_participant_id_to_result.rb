class AddParticipantIdToResult < ActiveRecord::Migration
  def change
    add_column :results, :participant_id, :integer
  end
end
