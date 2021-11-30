class Dragon
  
  def initialize name, kind
    @name = name
    @kind = kind
    @life = 3
    if kind == "1"
      @kind = "Собака"
    elsif  kind == "2"  
      @kind = "Кошка"
    elsif  kind == "3"  
      @kind = "Попугай"
    elsif  kind == "4"  
      @kind = "Дракон"
    elsif  kind == "5"  
    puts "Спасибо за игру\n"
    exit
    end
    puts "Ваш " + @kind + " с именем " + @name + " родился."
    puts "Поздравляем\n"
  end


  def feed
    puts "Вы хотите покормить " + @name +  " ?
    1 - Да 
    2 - Нет \n"
    eat = gets.chomp.to_s
    if eat == "1"
      puts "Вы кормите " + @name + ".\n"
    elsif eat == "2"
      puts "Ваш " + @kind + " сьедает вас. Спасибо за игру\n"
    exit
    end
  @life -= 1
  end
  
  def walk
    puts "Погулять с " + @name +  " ?
    1 - Да 
    2 - Нет \n"
    walk = gets.chomp.to_s
    if walk == "1"
      puts "Ваш питомец довольный\n"
    elsif walk == "2"
      puts "Ваш питомец не довольный и он вас покидает\n"
    exit
    end
  @life -= 1
  end
  


 def toss
  if @kind == "Собака" 
    puts 'Вы подбрасываете ' + @name + '(а) в воздух.'
    puts 'Он хихикает, облизывает вас.'
  elsif @kind == "Кошка"
    puts 'Вы подбрасываете ' + @name + '(а) в воздух.'
    puts 'Он хихикает, облизывает вас.'
  elsif @kind == "Дракон"
    puts 'Вы подбрасываете ' + @name + '(а) в воздух.'
    puts 'Он хихикает, обжигая при этом вам брови.'
  end
  @life -= 1
  end





    def life
      if @life > 0
        puts "тут я хотел зациклить но не получилось"
        exit
      elsif @life <= 1
        puts "Жизнь вашего питомца закончилась"
        exit
      end
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
    pet.feed
    pet.walk
    pet.toss
    pet.life




  

