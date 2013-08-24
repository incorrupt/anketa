#encoding: utf-8
class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.float   :value
      t.integer :worksheet_id
      t.integer :depart_id
      t.integer :factor_id
      t.timestamps
    end
  end
end
