class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :matricule
      t.date :birth_date
      t.string :sexe

      t.timestamps
    end
  end
end
