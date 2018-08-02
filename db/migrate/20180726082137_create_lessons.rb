class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :title_lesson
      t.integer :title_unit
      t.string :title_content
      t.integer :last_lesson_time
      t.text :last_lesson_content
      t.string :object
      t.integer :intro_time
      t.text :intro_content
      t.integer :practice_time
      t.text :practice_content
      t.integer :working_time
      t.text :working_content
      t.text :diff_support
      t.text :diff_enrich
      t.integer :assess_time
      t.text :assess_content
      t.integer :review_time
      t.text :review_content
      t.references :grade, foreign_key: true
      t.references :subject, foreign_key: true
      t.timestamps
    end
    add_index :lessons, [:grade_id, :subject_id, :created_at]
  end
end
