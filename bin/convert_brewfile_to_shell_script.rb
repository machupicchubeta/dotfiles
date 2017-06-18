File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'set -eu'
  puts 'sudo chown -R $(whoami):admin $(brew --prefix)'
  puts 'cd $(brew --repository) && git checkout master'
  puts 'cd -'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    elsif line.start_with?('cask install')
      app_name = line.chomp.gsub('cask install', '').strip

      puts "if [[ $(brew cask info #{app_name} | grep 'Not installed') || $(brew cask info #{app_name} | grep '/usr/local/Caskroom/#{app_name}' | grep -v '(binary)' | wc -l) > 1 ]]; then if [[ $(ls /usr/local/Caskroom | grep #{app_name}) ]]; then brew cask uninstall #{app_name} --force && brew cask install #{app_name} --force; else brew cask install #{app_name} --force; fi; elif [[ $(brew cask info #{app_name} | grep '#{app_name}: [_a-z0-9\\.,\\-]*' | perl -pe 's/#{app_name}: ([_a-z0-9\\.,\\-]+|latest)/$1/') != $(brew cask info #{app_name} | grep '/usr/local/Caskroom/#{app_name}/[_a-z0-9\\.,\\-]* (.*)' | perl -pe 's/\\/usr\\/local\\/Caskroom\\/#{app_name}\\/([_a-z0-9\\.,\\-]+|latest) \\(.+\\)/$1/') ]]; then brew cask uninstall #{app_name} --force && brew cask install #{app_name} --force; else echo '#{app_name} is currently the newest version available'; fi"
    else
      print "brew #{line}"
    end
  end
end
