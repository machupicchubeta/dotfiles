File.open ARGV[0] do |brewfile|
  puts '#!/bin/sh'
  puts 'set -eu'
  puts 'sudo chown -R $(whoami):admin $(brew --prefix)/*'
  puts 'cd $(brew --repository) && git checkout master'
  puts 'cd -'

  brewfile.each_line do |line|
    if line.start_with?('#') || line.chomp.empty?
      print line
    elsif line.start_with?('untap')
      repository = line.chomp.gsub('untap', '').strip

      puts "if [[ $(brew tap | grep #{repository}) ]]; then brew untap #{repository}; fi"
    elsif line.start_with?('unlink')
      keg = line.chomp.gsub('unlink', '').strip

      puts "if ! [[ $(brew info #{keg} | grep 'Not installed') ]]; then brew unlink #{keg}; fi"
    else
      print "brew #{line}"
    end
  end
end
