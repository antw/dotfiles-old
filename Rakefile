HOME = File.expand_path('~')

def link(paths)
  from_dir = File.expand_path(File.dirname(__FILE__))
  to_dir   = HOME

  paths.each_pair do |to, from|
    from = "#{from_dir}/#{from}"
    to   = "#{to_dir}/#{to}"

    sh "ln -sf #{from} #{to}"
  end
end

desc 'links dotfiles to the home directory'
task :default do
  link '.vimrc.local'  => 'vimrc.local'
  link '.gvimrc.local' => 'gvimrc.local'
  link '.janus.rake'   => 'janus.rake'
  link '.gitconfig'    => 'gitconfig'

  link '.oh-my-zsh/custom/alias.zsh'      => 'zsh/alias.zsh'
  link '.oh-my-zsh/custom/paths.zsh'      => 'zsh/paths.zsh'
  link '.oh-my-zsh/custom/editor.zsh'     => 'zsh/editor.zsh'
  link '.oh-my-zsh/themes/antw.zsh-theme' => 'zsh/antw.zsh-theme'
  link '.zshrc'                           => 'zshrc'
end
