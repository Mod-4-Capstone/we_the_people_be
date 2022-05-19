class CreateBiographies < ActiveRecord::Migration[5.2]
  def change
    create_table :biographies do |t|
      t.string :name
      t.string :type
      t.string :state
      t.integer :age
      t.string :photo
      t.string :gender
      t.integer :years_in_office
      t.integer :next_election
    end
  end
end
