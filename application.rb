# My initial attempt at parsing the time.now output. I didn't realize i could call .hour!
class Application
    def call(env)
        resp= Rack::Response.new

        # Get the current time
        linux_time = Time.new
        current_time= linux_time.strftime("%k:%M") # Return the time without date and other stamps
        # resp.write "#{current_time}" 
        # Check if current_time is greater than or equal to 12
            # If it is, return: "Good Afternoon!"
            # If it is not, return: "Good Morning!"
        if current_time 

        resp.finish
    end
end