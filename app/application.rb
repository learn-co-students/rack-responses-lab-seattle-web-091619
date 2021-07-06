class Application
 
    def call(env)
      resp = Rack::Response.new
      t = Time.now


      if t.hour < 12
        resp.write "Good Morning!"
        resp.write "\n#{t}"
      else 
        resp.write "Good Afternoon!"
        resp.write "\n#{t}"
      end

      resp.finish
    end
   
  end