class CreateSurveydisplays < ActiveRecord::Migration
  def change
    create_table :surveydisplays do |t|
      t.string :name
      t.string :location
      t.string :language
      t.text :comment

      t.timestamps null: false
    end
  end
end
