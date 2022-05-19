class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :planned_parenthood
      t.integer :americans_for_prosperity
      t.integer :aclu
      t.integer :end_citizens_united
      t.integer :national_association_of_police
      t.integer :national_parks_conservation
      t.integer :nra
      t.integer :numbers_usa
      t.integer :norml
    end
  end
end
