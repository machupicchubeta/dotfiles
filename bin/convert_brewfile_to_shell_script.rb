File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'sudo chown -R $(whoami):admin /usr/local/'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    elsif line.start_with?('cask install')
      puts "if [[ $(brew #{line.chomp.gsub('install', 'info')} | grep 'Not installed') ]]; then if [[ $(ls /usr/local/Caskroom | grep #{line.chomp.gsub('cask', '').gsub(' install', '').strip}) ]]; then brew #{line.chomp.gsub('install', 'uninstall')} --force && brew #{line.chomp}; else brew #{line.chomp}; fi; else echo '#{line.chomp.gsub('cask', '').gsub('install', '').strip} is currently the newest version available'; fi"
    else
      print "brew #{line}"
    end
  end
end
