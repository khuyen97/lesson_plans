class AddStatusToLesson < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :status, :integer, default: 1
  end
end
