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
    puts "This job runs every 5 seconds"
  end

  every(
    5.seconds,
    "second.job",
    if: lambda { |t|
      puts "second lambda #{t}"
      t.utc.hour % 12 == 0
    }
  ) do
    puts "This job runs 5 seconds minute"
  end
end