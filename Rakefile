require 'fileutils'

HOME = File.expand_path('~')

def dotfile(paths, *)
  from_dir = File.expand_path(File.dirname(__FILE__))
  to_dir   = HOME

  paths.each_pair do |to, from|
    from = "#{from_dir}/#{from}"
    to   = "#{to_dir}/#{to}"

    FileUtils.ln_sf from, to, :verbose => true
  end
end

desc 'links dotfiles to the home directory'
task :default do
  dotfile '.vimrc.local'  => 'vimrc.local'
  dotfile '.gvimrc.local' => 'gvimrc.local'
  dotfile '.janus.rake'   => 'janus.rake'
  dotfile '.gitconfig'    => 'gitconfig'
  dotfile '.gemrc'        => 'gemrc'
  dotfile '.rspec'        => 'rspec'

  dotfile '.oh-my-zsh/custom/alias.zsh'      => 'zsh/alias.zsh'
  dotfile '.oh-my-zsh/custom/correction.zsh' => 'zsh/correction.zsh'
  dotfile '.oh-my-zsh/custom/paths.zsh'      => 'zsh/paths.zsh'
  dotfile '.oh-my-zsh/custom/editor.zsh'     => 'zsh/editor.zsh'
  dotfile '.oh-my-zsh/themes/antw.zsh-theme' => 'zsh/antw.zsh-theme'
  dotfile '.zshrc'                           => 'zshrc'
end
