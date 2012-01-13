class CreateChurchinfos < ActiveRecord::Migration
  def change
    create_table :churchinfos do |t|
      t.string :name
      t.string :name_alias
      t.string :pastor 
      t.string :addln1
      t.string :addln2
      t.integer :zone
      t.integer :district

      t.timestamps
    end
  end
end
