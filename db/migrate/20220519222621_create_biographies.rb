class CreateBiographies < ActiveRecord::Migration[5.2]
  def change
    create_table :biographies do |t|
      t.string :name
      t.string :congressional_type
      t.string :state
      t.integer :age
      t.string :photo
      t.string :gender
      t.string :district
      t.integer :years_in_office
      t.integer :next_election
      t.integer :representative_id
    end
  end
end
