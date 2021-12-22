require './app/tamagochi'

use Rack::Reloader, 0
use Rack::Static, urls: ['/public']
use Rack::Auth::Basic do |username, password|
  username == 'Kote'
  password == '123456'
end
run Pet
