require 'erb'
require './app/lib/logic'

class Pet
  include Logic

  def self.call(env)
    new(env).response.finish
  end

  def initialize(env)
    @req = Rack::Request.new(env)
    @life = 100
    @health = 10
    @happy = 10
    @eat = 10
    @sleepiness = 10
    @moods = 15
    @wc = 0
    @love = 10
    @anger = 0
    @energy = 10
    $NEEDS  = %w[health eat sleep happy sleepiness moods wc love anger energy]
  end

  def response
    case @req.path
    when '/'
      Rack::Response.new(render('form.html.erb'))

    when '/initialize'
      Rack::Response.new do |response|
        response.set_cookie('health', @health)
        response.set_cookie('life', @life)
        response.set_cookie('eat', @eat)
        response.set_cookie('sleepiness', @sleepiness)
        response.set_cookie('moods', @moods)
        response.set_cookie('happy', @happy)
        response.set_cookie('wc', @wc)
        response.set_cookie('love', @love)
        response.set_cookie('anger', @anger)
        response.set_cookie('energy', @energy)
        response.set_cookie('name', @req.params['name'])
        response.redirect('/start')
      end

    when '/exit'
      Rack::Response.new('Game Over', 404)
      Rack::Response.new(render('over.html.erb'))

    when '/start'
      if get('health') <= 0 || get('life') <= 0 || get('eat') <= 0 || get('sleepiness') <= 0 || get('moods') <= 0 || get('happy') <= 0 || get('love') <= 0 || get('anger') >= 20 || get('energy') <= 0
        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render('over.html.erb'))
      if get('eat') >= 50
        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render('over1.html.erb'))
      end
      else
        Rack::Response.new(render('index.html.erb'))
      end

    when '/change'
      return Logic.change_params(@req, 'health') if @req.params['health']
      return Logic.change_params(@req, 'life')   if @req.params['life']
      return Logic.change_params(@req, 'eat') if @req.params['eat']
      return Logic.change_params(@req, 'sleepiness') if @req.params['sleepiness']
      return Logic.change_params(@req, 'moods')  if @req.params['moods']
      return Logic.change_params(@req, 'happy')  if @req.params['happy']
      return Logic.change_params(@req, 'wc') if @req.params['wc']
      return Logic.change_params(@req, 'love') if @req.params['love']
      return Logic.change_params(@req, 'anger') if @req.params['anger']
      return Logic.change_params(@req, 'energy') if @req.params['energy']
    else
      Rack::Response.new('Not Found', 404)
    end
  end

  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

  def name
    name = @req.cookies['name'].delete(' ')
    name.empty? ? 'Pet' : @req.cookies['name']
  end

  def get(attr)
    @req.cookies[attr.to_s].to_i
  end
end
