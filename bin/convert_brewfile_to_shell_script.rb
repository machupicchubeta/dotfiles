File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'sudo chown -R $(whoami):admin /usr/local/'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    elsif line.start_with?('cask install')
      puts "brew  #{line.chomp} --force"
    else
      print "brew #{line}"
    end
  end
end
