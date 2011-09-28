def link(file)
  from = File.expand_path(File.dirname(__FILE__))
  to   = File.expand_path('~')

  if File.file?("#{to}/.#{file}")
    puts ".#{file} exists and is a real file"
  elsif not File.symlink?("#{to}/.#{file}")
    sh "ln -s #{from}/#{file} #{to}/.#{file}"
  end
end

desc 'links dotfiles to the home directory'
task :default do
  link 'vimrc.local'
  link 'gvimrc.local'
  link 'janus.rake'
  link 'gitconfig'
end
