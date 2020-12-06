class CreateProtags < ActiveRecord::Migration[6.0]
  def change
    create_table :protags do |t|
      t.references :task, null: false, foreign_key: true
      t.string :tag

      t.timestamps
    end
  end
end
