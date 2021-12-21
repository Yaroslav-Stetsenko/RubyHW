module Logic
  def self.change_params(req, name)
    Rack::Response.new do |response|
      response.set_cookie(name, req.cookies[name.to_s].to_i + rand(5..10))

      need = ($NEEDS - [name]).sample

      response.set_cookie(need, req.cookies[need.to_s].to_i - 5)

      response.redirect('/start')
    end
  end
end
