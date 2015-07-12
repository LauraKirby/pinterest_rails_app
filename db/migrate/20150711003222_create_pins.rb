class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.text :url
      t.text :url_comment

      t.timestamps null: false
    end
  end
end
