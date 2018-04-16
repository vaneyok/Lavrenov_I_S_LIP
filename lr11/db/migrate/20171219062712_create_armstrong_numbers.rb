class CreateArmstrongNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :armstrong_numbers do |t|
      t.string :input_value
      t.string :output_value

      t.timestamps
    end
  end
end
