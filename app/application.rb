class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now # why do I have to set this to a variable first ; and then use time.hour
        if time.hour < 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end