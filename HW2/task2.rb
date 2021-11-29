class Dragon
  
  def initialize name, kind
    @name = name
    @kind = kind
    if kind == '1'  
      @kind = 'Собака'
    elsif  kind == '2'  
      @kind = 'Кошка'
    elsif  kind == '3'  
      @kind = 'Попугай'
    elsif  kind == '4'  
      @kind = 'Дракон'
    elsif  kind == '5'  
    print "Спасибо за игру\n"
    exit
    end
    puts 'Ваш ' + @name+ ' ' + @kind + ' родился.'
    print "Поздравляем\n"
  end







end
    print "Введите название питомца: "
    name = gets.chomp.to_s
    print "Выберите вашего питомца: 
    1 - Собака
    2 - Кошка
    3 - Попугай
    4 - Дракон 
    5 - Ничего не хочу\n"
    kind = gets.chomp().to_s
    pet = Dragon.new name, kind
