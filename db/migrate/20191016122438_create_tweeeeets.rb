class CreateTweeeeets < ActiveRecord::Migration
  def change
    create_table :tweeeeets do |t|
      t.text :tweeeeet

      t.timestamps null: false
    end
  end
end
