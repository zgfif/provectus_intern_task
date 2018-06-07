class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :tag
      t.date :scheduled_date
      t.boolean :complete

      t.timestamps
    end
  end
end
