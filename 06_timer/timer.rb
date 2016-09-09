class Timer
  attr_accessor :seconds, :time_string

  def initialize
  	@seconds = 0
  end

  def time_string
  	@time_string = Time.at(@seconds).utc.strftime('%H:%M:%S')
  end
end


=begin
  def seconds
  	@seconds = 1
  end


x = Timer.new
x.seconds = 1
puts x.seconds
puts x.time_string

=end
