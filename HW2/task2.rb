class Pet
  def initialize(name, kind)
    @name = name
    @kind = kind
    @life = 100
    @health = 10
    @happy = 10
    @eat = 10
    @sleepiness = 10
    @moods = 10
    @wc = 0
    @love = 10
    @anger = 0
    @energy = 10
  end

  def play
    @happy += 5
    @energy -= 5
    @wc += 1
    @eat -= 5
    passageOfTime
  end

  def want_poo
    @wc = 0
    @eat -= 1
    passageOfTime
  end

  def food
    @eat += 10
    @happy += 3
    @love += 2
    @wc += 3
    if @eat >= 50
      p 'Вы точно хотите покормить ' + @name + '?
    1 - Да
    2 - Нет'
      eat = gets.chomp.to_s
      if eat == '1'
        p 'Вы кормите ' + @name + '.'
        @happy -= 1
        @love -= 1
      elsif eat == '2'
        @happy += 2
        @love += 2
        p 'Хорошо, не перекармливайте питомца'
      end
    end
    passageOfTime
  end

  def sleep
    @sleepiness = 0
    @happy += 2
    @love += 2
    passageOfTime
  end

  def bathe # искупаться
    @health += 2
    @love = 10
    @energy -= 1
    passageOfTime
  end

  def doctor # врач
    @life += 5
    @health += 2
    passageOfTime
  end

  def stroll # прогулка
    @health -= 1
    @happy += 3
    @eat -= 2
    @sleepiness -= 1
    @moods += 2
    @wc += 2
    @love += 5
    @energy -= 2
    passageOfTime
  end

  def training # дрессировка
    @happy += 3
    @eat -= 2
    @sleepiness -= 1
    @moods += 2
    @wc += 2
    @love += 5
    @energy -= 2
    passageOfTime
  end

  def scratch # почесать
    @happy += 3
    @moods += 2
    @love += 5
    passageOfTime
  end

  def independence # самостоятельность
    @love -= 2
    @moods -= 2
    @eat -= 2
    @happy -= 3
    passageOfTime
  end

  def help
    p '1 - Поиграть'
    p '2 - Отвести в туалет'
    p '3 - Покормить'
    p '4 - Положить спать'
    p '5 - Покупать'
    p '6 - Отвести к доктору'
    p '7 - Прогуляться'
    p '8 - Дрессировать'
    p '9 - Почесать'
    p '10 - Пусть сам себя развлекает'
  end

  private

  def passageOfTime
    @life -= 1
    @eat -= rand(3)
    @moods -= rand(3)
    @wc += rand(3)
    @love -= 1
    @sleepiness += 1

    if @eat > 100
      p 'Ваш ' + @name + " умирает от переедания\n"
      exit
    end
    if @life <= 0
      p 'Ваш ' + @name + ' умирает от старостиn'
      exit
    end
    if @sleepiness <= 0
      p 'Ваш ' + @name + ' умирает от недосыпания'
      exit
    end
    if @moods <= 0
      p 'Ваш ' + @name + ' покидает вас'
      exit
    end
    if @anger >= 20
      p 'Ваш ' + @name + ' укусил вас и убежал'
      exit
    end
  end
  if @wc == 10
    p 'Злой ' + @name + ' писает на вас'
    @wc = 0
    @love -= 2
    @anger += 5
  end
end

print 'Введите название питомца: '
name = gets.chomp.to_s
print "Выберите вашего питомца:
    1 - Собака
    2 - Кошка
    3 - Попугай
    4 - Дракон
    5 - Ничего не хочу\n"
kind = gets.chomp.to_s
pet = Pet.new name, kind

if kind == '1'
  @kind = 'Собака'
elsif  kind == '2'
  @kind = 'Кошка'
elsif  kind == '3'
  @kind = 'Попугай'
elsif  kind == '4'
  @kind = 'Дракон'
elsif  kind == '5'
  p "Спасибо за игру\n"
  exit
end
p 'Ваш ' + @kind + ' с именем ' + name + ' родился.'
p 'Поздравляем'

p 'Что вы хотите сделать с ' + name + '?'
puts '    1 - Поиграть
    2 - Отвести в туалет
    3 - Покормить
    4 - Положить спать
    5 - Покупать
    6 - Отвести к доктору
    7 - Прогуляться
    8 - Дрессировать
    9 - Почесать
    10 - Пусть сам себя развлекает'

command = gets.chomp
until command == 'exit'
  case command
  when '1'
    pet.play
    p 'Вы играети с ' + name
  when '2'
    pet.want_poo
    p name + ' идет в туалет.'
  when '3'
    pet.food
    p 'Вы кормите ' + name + ' и он счастлив.'
  when '4'
    pet.sleep
    p 'Вы укладываете ' + name + ' спать.'
    p 'Через некоторое время ' + name + ' просыпается.'
  when '5'
    pet.bathe
    p 'Ваш питомец ' + name + ' теперь чистенький.'
  when '6'
    pet.doctor
    p 'Ваш питомец ' + name + ' стал здоровее.'
  when '7'
    pet.stroll
    p 'Вы прогулялись ' + name + ', он стал счастливее.'
  when '8'
    pet.training
    p 'Вы дресируете ' + name + '.'
  when '9'
    pet.scratch
    p 'Вы почесали ' + name + '.'
  when '10'
    pet.independence
    p 'Ваш ' + @kind + ' развлекает себя сам.'
  when '11'
    pet.help
  else
    p 'Выберите команду от 1 до 10. Нажмите 11, чтобы посмотреть возможные команды'
  end
  command = gets.chomp
end
