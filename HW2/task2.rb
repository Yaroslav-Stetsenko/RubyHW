class Dragon
  
  def initialize name, kind
    @name = name
    @kind = kind
    puts 'Ваш ' + @name+ ' ' + @kind + ' родился.'
  end
  def kind_Of
    if @kind == '1'  
    kind = 'Собака'
    elsif  @kind == '2'  
      kind = 'Кошка'
    end
    print "Поздравляем"
  end
end
    print "Введите название питомца: "
    name = gets.chomp.to_s
    print "Выберите вашего питомца: 
    1 - Собака
    2 - Кошка
    3 - Попугай
    4 - Дракон \n"
    kind = gets.chomp().to_s
    pet = Dragon.new name, kind
    pet.kind_Of