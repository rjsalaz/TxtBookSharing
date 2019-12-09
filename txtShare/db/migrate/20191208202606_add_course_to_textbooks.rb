class AddCourseToTextbooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :textbooks, :course, null: false, foreign_key: true
  end
end
