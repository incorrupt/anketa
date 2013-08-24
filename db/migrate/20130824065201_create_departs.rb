#encoding: utf-8
class CreateDeparts < ActiveRecord::Migration
  def change
    create_table :departs do |t|
      t.string  :name, :limit => 1000  
      t.integer :parent 
      t.timestamps
    end
    Depart.create :parent => nil, :name =>'---', :id => 2
    Depart.create :parent => nil, :name =>'Руководство', :id => 1
    Depart.create :parent => nil, :name =>'Планово - аналитический отдел', :id => 7
    Depart.create :parent => nil, :name =>'Служба внутреннего контроля', :id => 8
      Depart.create :parent => 8, :name =>'Отдел внутреннего контроля и аудита службы внутреннего контроля', :id => 801
      Depart.create :parent => 8, :name =>'Отдел методологии банковских операций службы внутреннего контроля', :id => 802
    Depart.create :parent => nil, :name =>'Управление бухгалтерского учета', :id => 9
      Depart.create :parent => 9, :name =>'Отдел методологии и стандартизации учетной политики банка', :id => 901
      Depart.create :parent => 9, :name =>'Отдел учета валютных операций', :id => 902
      Depart.create :parent => 9, :name =>'Группа учета внутрибанковских операций', :id => 903
      Depart.create :parent => 9, :name =>'Группа налогообложения', :id => 904
      Depart.create :parent => 9, :name =>'Группа учета банковских операций', :id => 905
      Depart.create :parent => 9, :name =>'Группа расчетов', :id => 906
      Depart.create :parent => 9, :name =>'Группа учета розничных операций', :id => 907
    Depart.create :parent => nil, :name =>'Отдел финансового мониторинга', :id => 10
    Depart.create :parent => nil, :name =>'Управление информационных технологий', :id => 11
      Depart.create :parent => 11, :name =>'Отдел инфраструктуры и технического обеспечения', :id => 1101
      Depart.create :parent => 11, :name =>'Отдел развития и сопровождения автоматизированных систем', :id => 1102
      Depart.create :parent => 11, :name =>'Отдел дистанционных каналов обслуживания', :id => 1103
    Depart.create :parent => nil, :name =>'Департамент безопасности', :id => 14
      Depart.create :parent => 14, :name =>'Отдел собственной безопасности', :id => 1401
      Depart.create :parent => 14, :name =>'Отдел экономической безопасности', :id => 1402
      Depart.create :parent => 14, :name =>'Группа финансовых рисков', :id => 140201
      Depart.create :parent => 14, :name =>'Группа по работе с просроченной задолженностью', :id => 140202
      Depart.create :parent => 14, :name =>'Отдел аналитической работы и зонального контроля', :id => 1403
      Depart.create :parent => 14, :name =>'Сектор информационной безопасности', :id => 1404
      Depart.create :parent => 14, :name =>'Служба охраны', :id => 1405
      Depart.create :parent => 14, :name =>'Отдел по организации охраны и режима', :id => 140501
      Depart.create :parent => 14, :name =>'Отдел перевозки ценностей', :id => 140502
    Depart.create :parent => nil, :nam =>'Уeправление проектного финансирования', :id => 15
      Depart.create :parent => 15, :nam =>'Отдел экспертизы и контроля проектов управления проектного финансирования', :id => 1501
      Depart.create :parent => 15, :nam =>'Отдел сопровождения проектов управления проектного финансирования', :id => 1502
    Depart.create :parent => nil, :name =>'Юридический отдел', :id => 16
    Depart.create :parent => nil, :name =>'Отдел рекламы и связей с общественностью', :id => 17
    Depart.create :parent => nil, :name =>'Хозяйственный отдел', :id => 18
    Depart.create :parent => nil, :name =>'Отдел сопровождения строительных проектов', :id => 19
    Depart.create :parent => nil, :name =>'Канцелярия', :id => 20
    Depart.create :parent => nil, :name =>'Отдел учета и отчетности', :id => 25
    Depart.create :parent => nil, :name =>'Управление по работе с персоналом', :id => 26
      Depart.create :parent => 26, :name =>'Отдел по подбору персонала', :id => 2601
      Depart.create :parent => 26, :name =>'Отдел по развитию персонала', :id => 2602
      Depart.create :parent => 26, :name =>'Отдел кадрового делопроизводства', :id => 2603
    Depart.create :parent => nil, :name =>'Бэк-офис', :id => 38
    Depart.create :parent => nil, :name =>'Отдел дистанционной работы с клиентами (контакт-центр)', :id => 50
  end
end
