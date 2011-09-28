def link(paths)
  from_dir = File.expand_path(File.dirname(__FILE__))
  to_dir   = File.expand_path('~')

  paths.each_pair do |to, from|
    from = "#{from_dir}/#{from}"
    to   = "#{to_dir}/#{to}"

    if File.file?(to)
      puts ".#{to} exists and is a real file"
    elsif not File.symlink?(to)
      sh "ln -s #{from} #{to}"
    end
  end
end

desc 'links dotfiles to the home directory'
task :default do
  link '.vimrc.local'  => 'vimrc.local'
  link '.gvimrc.local' => 'gvimrc.local'
  link '.janus.rake'   => 'janus.rake'
  link '.gitconfig'    => 'gitconfig'
end
