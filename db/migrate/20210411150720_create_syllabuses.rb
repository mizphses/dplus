class CreateSyllabuses < ActiveRecord::Migration[6.1]
  def change
    create_table :syllabuses do |t|
      t.string :title
      t.integer :grade
      t.integer :term
      t.string :day
      t.string :faculty
      t.string :teacher
      t.integer :year
      t.integer :degree
      t.string :condition
      t.string :lang
      t.string :overview
      t.string :purpose
      t.string :goal
      t.string :contents
      t.string :outofclass_content
      t.string :outofclass_time
      t.string :evaluation
      t.string :evaluation_note
      t.string :feedback
      t.string :feedback_note
      t.string :activelearning_content
      t.string :activelearning_howto
      t.boolean :experience
      t.string :experience_contents
      t.string :experience_reduction
      t.string :textbook
      t.string :note
      t.string :url
      t.string :comment

      t.timestamps
    end
  end
end
