class CreateTextbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :textbooks do |t|
      t.text :comment
      t.text :download_path

      t.timestamps
    end
  end
end
