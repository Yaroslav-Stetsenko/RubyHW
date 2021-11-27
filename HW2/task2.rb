class Pet
 attr_accessor :kind, :name, :health, :eat, :play, :sleep, :wc
 
def initialize (kind, name, health, eat, play, sleep, wc )
    @name = name
    @kind = kind
    @health = health  
    @play = play
    @sleep = sleep 
    @eat = eat
    @wc = wc
  end
    puts "\nВыберите питомца #{pet.kind}:
1 - Собачка
2 - Кошка
3 - Попугай 
4 - Дракон
5 - Мне не нужен питомец

if pet.kind
  diya = gets.chomp().to_s
    case diya
    when "1"
      print "Вы выбрали - 1 "
    when "2"
        print "Вы выбрали - 2 "
    when "3"
        print "Вы выбрали - 3 "
    when "4"
      print "Вы выбрали - 4 "
    when "5"
      print "Вы выбрали - 5 "
#     print "\n\ Конец игры, спасибо"
    else
      puts "Вы ввели #{diya}, что-то не так!"
      print "Попробуйте сновa! "
      next
    end



print "Введите название питомца: "
name = gets.chomp().to_s









pet = Pet.new(name, kind, 100, 100, 100, 100, 100)
puts "------------------------"
puts ("    Родился " + pet.name)
puts "------------------------"
puts "\nЗдоровья\t#{pet.health}\nСытость\t\t#{pet.eat}\nУсталость\t#{pet.sleep}\nИнтерес\t\t#{pet.play}\nТуалет\t#{pet.wc}"
puts ""
puts "Проходит время..."
begin
  print "-------------------"
  puts "\n|Здоровья\t#{pet.health -= rand(20)}|\n|Сытость\t#{pet.eat -= rand(20)}|\n|Усталость\t#{pet.sleep -=rand(20)}|\n|Интерес\t#{pet.play -= rand(20)}|\n|Туалет\t#{pet.wc -= rand(20)}|"
  print "-------------------"
    puts "\nЧто вы хотите сделать с #{pet.name}:
1 - Сходить к врачу
2 - Пококормить
3 - Уложить спать
4 - Поиграть
5 - Туалет
Нажмите Enter что бы ничего не делать..."
 
 
  if pet.health != 0
  diya = gets.chomp().to_s
    case diya
    when "1"
      print "Вы выбрали - 1 "
        if pet.health > 0
            pet.health = 100
           end
         pet.eat -= rand(20)
         pet.sleep -= rand(20)
         pet.play -= rand(20)
         pet.wc -= rand(20)
         print "#{pet.name} лечится!"
      when "2"
        print "Вы выбрали - 2 "
         pet.health -= rand(20)
        if pet.eat > 0
            pet.eat = 100
          end
         pet.sleep -= rand(20)
         pet.play -= rand(20)
         pet.wc -= rand(20)
        print "#{pet.name} ест!"
      when "3"
        print "Вы выбрали - 3 "
        pet.health -= rand(20)
        pet.eat -= rand(20)
        if pet.sleep > 0
            pet.sleep = 100
          end
        pet.play -= rand(20)
        pet.wc -= rand(20)
        print "#{pet.name} спит!"
    when "4"
      print "Вы выбрали - 4 "
        pet.health -= rand(20)
        pet.eat -= rand(20)
        pet.sleep -= rand(20)
        if pet.play > 0
            pet.play = 100
          end
        pet.wc -= rand(20)
        print "#{pet.name} играет!"
    when "5"
      print "Вы выбрали - 5 "
        pet.health -= rand(20)
        pet.eat -= rand(20)
        pet.sleep -= rand(20)
        pet.play -= rand(20)
        if pet.wc > 0
            pet.wc = 100
          end
        print "#{pet.name} играетиграет!"
    when ""
        print "Вы выбрали не делать ничего!"
        pet.health -= rand(20)
        pet.eat -= rand(20)
        pet.sleep -= rand(20)
        pet.play -= rand(20)
        pet.wc -= rand(20)
    else
      puts "Вы ввели #{diya}, что-то не так!"
      print "Попробуйте сновa! "
      next
    end
  if pet.health <= 0
      pet.health = 0
        print "\n\n#{pet.name} умер от болезней!!! Конец игры!"
  elsif pet.eat <= 0
      pet.eat = 0
        print "\n\n#{pet.name} умер от голода!!! Конец игры!"
  elsif pet.sleep <= 0
      pet.sleep = 0
        print "\n\n#{pet.name} умер от безсонници!!! Конец игры!"
  elsif pet.play <= 0
      pet.play = 0
        print "\n\n#{pet.name} умер от скуки!!! Конец игры!"
  elsif pet.wc <= 0
      pet.wc = 0
        print "\n\n#{pet.name} умер !!! Конец игры!"
end
              
 
  puts "\nЗдоровья\t#{pet.health}\nСытость\t\t#{pet.eat}\nУсталость\t#{pet.sleep}\nИнтерес\t\t#{pet.play}\nЗдоровья\t#{pet.wc}"
 
  
  end  while pet.health > 0 && pet.eat > 0 && pet.sleep > 0 && pet.play > 0 && pet.wc > 0
   
          #       
          # break
end 
 
    
  # puts ""
  # puts("#{pet.name} умер!!! Конец игры!")
  # puts ""
 
end