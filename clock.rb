require 'clockwork'

module Clockwork
  every(
    5.seconds,
    "first.job",
    if: lambda { |t|
      puts "first lambda #{t}"
      t.utc.hour % 12 == 0
    }
  ) do
    puts "This job runs every minute. Current time: #{Time.now}"
  end

  every(
    5.seconds,
    "second.job",
    if: lambda { |t|
      puts "second lambda #{t}, utc_hour: #{t.hour}"
      t.utc.hour % 12 == 0
    }
  ) do
    puts "This job runs every minute. Current time: #{Time.now}"
  end
end