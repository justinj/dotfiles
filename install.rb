@overwrite_all = false

def ask to
  puts "Will overwrite existing #{to}, do it anyway? [y]es, [n]o, [a]ll, [s]kip"
  loop do
    result = gets.chomp
    case result.downcase
    when "y"
      return :yes
    when "n"
      return :no
    when "a"
      return :all
    when "s"
      return :skip
    end
  end
end

def ln from, to
  from = File.expand_path(from)
  to = File.expand_path(to)
  if File.exists? to
    if @overwrite_all
      sh "rm -rf #{to}"
    else
      case ask to
      when :yes
        sh "rm -rf #{to}"
      when :no
        puts "Aborting..."
        exit
      when :all
        @overwrite_all = true
        sh "rm -rf #{to}"
      when :skip
        return false
      end
    end
  end
  sh "ln -s #{from} #{to}"
  true
end

def sh command
  puts command
  `#{command}`
end

# Vim

vimrc = ln "~/.dotfiles/vimrc", "~/.vimrc"
vim   = ln "~/.dotfiles/vim",   "~/.vim"

was_installed = vimrc && vim
if was_installed
  sh "rm -rf ~/.vim/bundle/vundle"
  system "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
  system "vim --noplugin +BundleInstall +qall"
end


# Fish

ln "~/.dotfiles/fish", "~/.config/fish"
ln "~/.dotfiles/aliases", "~/.aliases"

# Tmux

ln "~/.dotfiles/tmux.conf", "~/.tmux.conf"

# Screen (you never know)

ln "~/.dotfiles/screenrc", "~/.screenrc"
