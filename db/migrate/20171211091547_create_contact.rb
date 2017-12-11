class CreateContact < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
    	t.string :fname
    	t.string :lname
    	t.string :email
    	t.string :message

    	t.timestamps
    end
  end
end
