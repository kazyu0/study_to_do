class CreateHomeworks < ActiveRecord::Migration[7.1]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :description
      t.string :subject
      t.date :due_date
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
