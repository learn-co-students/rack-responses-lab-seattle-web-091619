class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    time = time.hour.to_s + ":" + time.min.to_s
    if time < "12"
      resp.write "Good Morning"
    #elsif time > "12"
      resp.write "Good Afternoon"
    end
    resp.finish
  end
end
