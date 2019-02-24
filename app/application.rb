class Application
  def call(env)
    @@item =[]
      resp = Rack::Response.new
      req = Rack::Request.new(env)


      if req.path.match(/items/)
        dynamic =reg.path.split("/items/").last
        @@item.find do |i|i.name == dynamic
        resp.write "You requested the #{i.price}"
      end
    else
      resp.status = 400
      resp.write "Item not found"
      else
        resp.status = 404
        resp.write "Route not found"
      end
       resp.finish
end

end
