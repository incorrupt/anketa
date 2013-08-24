#encoding: utf-8
class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string  :name, :limit => 1000  
      t.float   :value
      t.integer :factor_id
      t.timestamps
    end
    # Скорость взаимодействия
    Rate.create :factor_id=> 2, :value=> 1, :name => 'иногда игнорирование обращений'
    Rate.create :factor_id=> 2, :value=> 2, :name => 'частое игнорирование обращений'
    Rate.create :factor_id=> 2, :value=> 3, :name => 'очень медленное'
    Rate.create :factor_id=> 2, :value=> 4, :name => 'медленное'
    Rate.create :factor_id=> 2, :value=> 5, :name => 'недостаточно быстро'
    Rate.create :factor_id=> 2, :value=> 6, :name => 'достаточно быстро'
    Rate.create :factor_id=> 2, :value=> 7, :name => 'быстрое реагирование'
    Rate.create :factor_id=> 2, :value=> 8, :name => 'мгновенное реагирование на обращение' 
    # Квалификация персонала 
    Rate.create :factor_id=> 3, :value=> 1, :name => 'очень низкая'
    Rate.create :factor_id=> 3, :value=> 2, :name => 'низкая'
    Rate.create :factor_id=> 3, :value=> 3, :name => 'достаточно низкая'
    Rate.create :factor_id=> 3, :value=> 4, :name => 'средняя'
    Rate.create :factor_id=> 3, :value=> 5, :name => 'недостаточно высокая'
    Rate.create :factor_id=> 3, :value=> 6, :name => 'достаточно высокая'
    Rate.create :factor_id=> 3, :value=> 7, :name => 'высокая'
    Rate.create :factor_id=> 3, :value=> 8, :name => 'очень высокая'
    # Клиенто-ориентированность 
    Rate.create :factor_id=> 4, :value=> 1, :name => 'очень низкая'
    Rate.create :factor_id=> 4, :value=> 2, :name => 'низкая'
    Rate.create :factor_id=> 4, :value=> 3, :name => 'достаточно низкая'
    Rate.create :factor_id=> 4, :value=> 4, :name => 'средняя'
    Rate.create :factor_id=> 4, :value=> 5, :name => 'недостаточно высокая'
    Rate.create :factor_id=> 4, :value=> 6, :name => 'достаточно высокая'
    Rate.create :factor_id=> 4, :value=> 7, :name => 'высокая'
    Rate.create :factor_id=> 4, :value=> 8, :name => 'очень высокая'
    # Степень взаимодействия 
    Rate.create :factor_id=> 5, :value=> 1, :name => 'взаимодействие носит разовый характер'
    Rate.create :factor_id=> 5, :value=> 2, :name => 'взаимодействие 1 раза в квартал'
    Rate.create :factor_id=> 5, :value=> 3, :name => 'взаимодействие 2 раза в квартал'
    Rate.create :factor_id=> 5, :value=> 4, :name => 'взаимодействие 1 раз в месяц'
    Rate.create :factor_id=> 5, :value=> 5, :name => 'взаимодействие 2 раза в месяц'
    Rate.create :factor_id=> 5, :value=> 6, :name => 'взаимодействие 1 раза в неделю'
    Rate.create :factor_id=> 5, :value=> 7, :name => 'взаимодействие 2 раза в неделю'
    Rate.create :factor_id=> 5, :value=> 8, :name => 'ежедневное взаимодействие'
  end
end
