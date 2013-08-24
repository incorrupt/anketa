#encoding: utf-8
class CreateFactors < ActiveRecord::Migration
  def change
    create_table :factors do |t|
      t.string :name, :limit => 1000  
      t.timestamps
    end
    Factor.create :id => 1, :name => "Доля участия" 
    Factor.create :id => 2, :name => "Скорость взаимодействия"
    Factor.create :id => 3, :name => "Квалификация персонала"
    Factor.create :id => 4, :name => "Клиенто-ориентированность"
    Factor.create :id => 5, :name => "Степень взаимодействия"
  end
end
