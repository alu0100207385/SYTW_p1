# -*- coding: utf-8 -*-
task :default => :server

desc "Arrancar la aplicación desde consola: bin[nombre_usuario, numero_seguidores]"
task :bin, [:arg1, :arg2] do |t, args|
#   puts "has escrito #{args.arg1.to_s} #{args.arg2.to_i}"
    sh "ruby popular.rb #{args.arg1} #{args.arg2}"
end

desc "Arrancar la aplicación web"
task :server do
  sh "ruby twitter.rb"
end

desc "Arrancar la aplicación web"
task :s do
  sh "ruby twitter.rb"
end

desc "Crear y ver documentación html"
task :html do
  sh "kramdown Readme.md > Readme.html"
  sh "sed -i '1i <meta charset='utf-8'>' Readme.html"
  sh "gnome-open Readme.html &"
end