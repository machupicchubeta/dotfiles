File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'sudo chown -R $(whoami):admin /usr/local/'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    elsif line.start_with?('cask install')
      app_name = line.chomp.gsub('cask install', '').strip

      puts "if [[ $(brew cask info #{app_name} | grep 'Not installed') || $(brew cask info #{app_name} | grep '/usr/local/Caskroom/#{app_name}' | grep -v '(binary)' | wc -l) > 1 ]]; then if [[ $(ls /usr/local/Caskroom | grep #{app_name}) ]]; then brew cask uninstall #{app_name} --force && brew #{line.chomp}; else brew #{line.chomp}; fi; else echo '#{app_name} is currently the newest version available'; fi"
    else
      print "brew #{line}"
    end
  end
end
