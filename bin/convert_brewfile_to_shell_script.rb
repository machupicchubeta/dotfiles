#!/usr/local/bin/ruby
File::open( ARGV[0] ) {|brewfile|
  puts "#!/bin/sh"
  puts 'sudo chown -R $(whoami):admin /usr/local/'

  brewfile.each_line {|line|
    if line[0] == "#"|| line.size == 1 then
      print line
    else
      print "brew " + line
    end
  }
}

