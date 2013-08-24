class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.float    :contrib  
      t.datetime :ending
      t.integer  :depart_id 
      t.string   :session_id
      t.timestamps
    end
  end
end
