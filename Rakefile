# Inspired by https://github.com/cjhveal/dotfiles/blob/master/Rakefile


task :install do
  dotfiles = Dir.glob("*.dotfile")

  overwrite_all = false

  dotfiles.each do |source|
    name = source[/\A(.*?)\.dotfile/,1]
    destination = File.expand_path("~/.#{name}")
    if File.exists?(destination) && !overwrite_all
      puts "file #{destination} already exists, overwrite? [n]o, [y]es, [a]ll"
      case STDIN.gets.chomp
      when "n"
        next
      when "a"
        overwrite_all = true
      end
    end
    rm_r destination if File.exists? destination
    sh "ln -s ~/.dotfiles/#{source} #{destination}"
  end

  puts "Installing vundle..."
  sh "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  puts "Running BundleInstall..."
  sh "vim --noplugin +BundleInstall +qall"
end
