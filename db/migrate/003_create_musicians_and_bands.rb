class CreateMusiciansAndBands < ActiveRecord::Migration
  def self.up
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
    end

    create_table :bands do |t|
      t.string :band_name
    end

    create_table :musicians_bands do |t|
      t.integer :musician_id
      t.integer :band_id
    end
  end

  def self.down
    drop_table :musicians
    drop_table :bands
    drop_table :musicians_bands
  end
end
