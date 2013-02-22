class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :album
      t.timestamps
    end
  end
end
