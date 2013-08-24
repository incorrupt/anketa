class CreateDeparts < ActiveRecord::Migration
  def change
    create_table :departs do |t|
      t.string  :name
      t.integer :parent 
      t.timestamps
    end
    Depart.create :parent => nil, :name =>'---', :id => 2
    Depart.create :parent => nil, :name =>'Руководство', :id => 1
    Depart.create :parent => nil, :name =>'Планово - аналитический отдел', :id => 7
    Depart.create :parent => nil, :name =>'Служба внутреннего контроля', :id => 8
    Depart.create :parent => nil, :name =>'Управление бухгалтерского учета', :id => 9
    Depart.create :parent => nil, :name =>'Отдел финансового мониторинга', :id => 10
    Depart.create :parent => nil, :name =>'Управление информационных технологий', :id => 11
    Depart.create :parent => nil, :name =>'Департамент безопасности', :id => 14
    Depart.create :parent => nil, :name =>'Управление проектного финансирования', :id => 15
    Depart.create :parent => nil, :name =>'Юридический отдел', :id =>  16
    Depart.create :parent => nil, :name =>'Отдел рекламы и связей с общественностью', :id =>  17
    Depart.create :parent => nil, :name =>'Хозяйственный отдел', :id =>  18
    Depart.create :parent => nil, :name =>'Отдел сопровождения строительных проектов', :id =>  19
    Depart.create :parent => nil, :name =>'Канцелярия', :id =>  20
    Depart.create :parent => nil, :name =>'Отдел учета и отчетности', :id =>  25
    Depart.create :parent => nil, :name =>'Управление по работе с персоналом', :id =>  26
    Depart.create :parent => nil, :name =>'Бэк-офис', :id =>  38
    Depart.create :parent => nil, :name =>'Отдел дистанционной работы с клиентами (контакт-центр)', :id => 50
  end
end
