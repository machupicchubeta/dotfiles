File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'sudo chown -R $(whoami):admin /usr/local/'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    else
      print "brew #{line}"

      print "brew #{line.chop} --force\n" if line =~ /cask install/
    end
  end
end
