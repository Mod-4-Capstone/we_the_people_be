# typed: true
class CreateRepresentativeSocials < ActiveRecord::Migration[5.2]
  def change
    create_table :representative_socials do |t|
      t.string :website
      t.string :contact_page
      t.string :twitter
      t.integer :representative_id
    end
  end
end
