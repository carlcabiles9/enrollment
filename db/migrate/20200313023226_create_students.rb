class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.string :course
      t.integer :age
      t.datetime :birthday

      t.timestamps
    end
  end
end
