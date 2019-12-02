class RemoveCargoFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :cargo, :string
  end
end
