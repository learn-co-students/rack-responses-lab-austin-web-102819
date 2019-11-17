class Application
    def call(env)
        resp= Rack::Response.new # This creates a new Rack when config.ru is run (application.rb and config.ru are linked)

        # Get the current time
        current_time = Time.new
        # resp.write "#{current_time}" 
        # Check if current_time is greater than or equal to 12
            # If it is, return: "Good Afternoon!"
            # If it is not, return: "Good Morning!"
        if current_time.hour >= 12
            resp.write "Good Afternoon!" 
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end
