class AddCountryEducationToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :country, :string
    add_column :participants, :education_level, :string
    add_column :participants, :major, :string
  end
end
