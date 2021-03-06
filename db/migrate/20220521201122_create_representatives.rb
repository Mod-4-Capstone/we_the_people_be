# typed: true
class CreateRepresentatives < ActiveRecord::Migration[5.2]
  def change
    create_table :representatives do |t|
      t.integer :votesmart_id
      t.references :biography, foreign_key: true
      t.references :rating, foreign_key: true
      t.references :representative_socials, foreign_key: true
    end
  end
end
