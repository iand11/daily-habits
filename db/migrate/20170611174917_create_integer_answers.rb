class CreateIntegerAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :integer_answers do |t|
      t.integer :response, null: false
      t.references :question, foreign_key: true
      t.attachment :avatar
      t.string :ip_address
      t.float :latitude
      t.float :longitude
      
      t.timestamps null: false
    end
  end
end
