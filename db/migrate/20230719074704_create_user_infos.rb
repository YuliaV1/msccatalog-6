class CreateUserInfo < ActiveRecord::Migration[7.0]
  def change
    create_table :user_info do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
