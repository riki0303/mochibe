class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false
      t.text :title
      t.float :time
      t.date :date
      t.text :memo

      t.timestamps
    end
  end
end
