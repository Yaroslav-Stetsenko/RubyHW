require 'bundler'
Bundler.setup

require 'compliterhtml'


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
    pas_time
  end

  def want_poo
    @wc = 0
    @eat -= 1
    pas_time
  end

  def food
    @eat += 10
    @happy += 3
    @love += 2
    @wc += 3
    pas_time
  end

  def sleep
    @sleepiness = 0
    @happy += 2
    @love += 2
    pas_time
  end

  def bathe
    @health += 2
    @love = 10
    @energy -= 1
    pas_time
  end

  def doctor
    @life += 5
    @health += 2
    pas_time
  end

  def stroll
    @health -= 1
    @happy += 3
    @eat -= 2
    @sleepiness -= 1
    @moods += 2
    @wc += 2
    @love += 5
    @energy -= 2
    pas_time
  end

  def training
    @happy += 3
    @eat -= 2
    @sleepiness -= 1
    @moods += 2
    @wc += 2
    @love += 5
    @energy -= 2
    pas_time
  end

  def scratch
    @happy += 3
    @moods += 2
    @love += 5
    pas_time
  end

  def independence
    @love -= 2
    @moods -= 2
    @eat -= 2
    @happy -= 3
    pas_time
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

  def pas_time
    @life -= 1
    @eat -= rand(3)
    @moods -= rand(3)
    @wc += rand(3)
    @love -= 1
    @sleepiness += 1
    if @eat > 100
      p "Ваш #{@name} умирает от переедания."
      exit
    end
    if @life <= 0
      p "Ваш #{@name} умирает от старости."
      exit
    end
    if @sleepiness <= 0
      p "Ваш #{@name} умирает от недосыпания."
      exit
    end
    if @moods <= 0
      p "Ваш #{@name} покидает вас."
      exit
    end
    if @anger >= 20
      p "Ваш #{@name} укусил вас и убежал."
      exit
    end
  end
end

p 'Введите название питомца:'
name = gets.chomp.to_s
print "Выберите вашего питомца:
    1 - Собака
    2 - Кошка
    3 - Попугай
    4 - Дракон
    5 - Ничего не хочу\n"
com = gets.chomp.to_s
pet = Pet.new name, @kind

case com
when '1'
  @kind = 'Собака'
when '2'
  @kind = 'Кошка'
when '3'
  @kind = 'Попугай'
when '4'
  @kind = 'Дракон'
when '5'
  @kind = 'Спасибо за игру'
  exit
else
  p 'Выберите команду от 1 до 5.'
end
p "Ваш #{@kind} с именем #{name} родился."
p 'Поздравляем'
p "Что вы хотите сделать с #{name}?"
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
    p "Вы играети с #{name}."
  when '2'
    pet.want_poo
    p "#{name} идет в туалет."
  when '3'
    pet.food
    p "Вы кормите #{name} и он счастлив."
  when '4'
    pet.sleep
    p "Вы укладываете #{name} спать."
  when '5'
    pet.bathe
    p "Ваш питомец #{name} теперь чистенький."
  when '6'
    pet.doctor
    p "Ваш питомец #{name} стал здоровее."
  when '7'
    pet.stroll
    p "Вы прогулялись c #{name}, он стал счастливее."
  when '8'
    pet.training
    p "Вы дресируете #{name}."
  when '9'
    pet.scratch
    p "Вы почесали #{name}."
  when '10'
    pet.independence
    p "Ваш #{@kind} развлекает себя сам."
  when '11'
    pet.help
  else
    p 'Выберите команду от 1 до 10. Нажмите 11, чтобы посмотреть возможные команды'
  end
  command = gets.chomp
end



  def html
    markup = "
    <div>
      <p>Жизни: #{@name}</p>
      <p>Настроение: #{@kind}</p>
      <p>Кл-во воды: #{@life}</p>
      <p>Кл-во воды: #{@health}</p>
      <p>Кл-во воды: #{@happy}</p>
      <p>Кл-во воды: #{@eat}</p>
      <p>Кл-во воды: #{@sleepiness}</p>
      <p>Кл-во воды: #{@moods}</p>
      <p>Кл-во воды: #{@wc}</p>
      <p>Кл-во воды: #{@anger}</p>
      <p>Кл-во воды: #{@energy}</p>
    </div>"

  end

