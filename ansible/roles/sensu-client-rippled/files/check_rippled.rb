#!/usr/bin/env ruby

procs = `ps aux`
running = false
procs.each_line do |proc|
  running = true if proc.include?('rippled')
end
if running
  puts 'OK - Rippled daemon is running'
  exit 0
else
  puts 'WARNING - Rippled daemon is NOT running'
  exit 1
end
