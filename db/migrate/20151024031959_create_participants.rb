class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :gender
      t.boolean :consent

      t.timestamps null: false
    end
  end
end
