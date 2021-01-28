class SimpleBencharker
    def run(description, &block)
        start_time = Time.now
        block.call
        end_time = Time.now
        elapse_time = end_time - start_time
        puts "\n"
        puts "#{description}"
        puts "Elapse time: #{elapse_time}"
    end
end

benchmarker = SimpleBencharker.new
benchmarker.run "Sleep a random amount of time" do
    5.times do 
        sleep(rand(0.1...1.0))
    end 
end 