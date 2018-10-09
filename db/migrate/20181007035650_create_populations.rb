class CreatePopulations < ActiveRecord::Migration[5.1]
  def change
    create_table :populations do |t|
      t.string :country_name
      t.string :country_code
      t.string :year
      t.string :total_population
      t.string :per_cent_urban_population

      t.timestamps
    end
  end
end
