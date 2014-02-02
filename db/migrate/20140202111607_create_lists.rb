class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :description
      t.integer :priority
      t.boolean :finished

      t.timestamps
    end
  end
end
