# -*- coding: utf-8 -*-
require 'twitter'
# require 'sinatra'
require './configure'

MAX = 10

nombre = ARGV[0] || 'AaronSocas'
n_amigos = ARGV[1] || 3
aux = n_amigos.to_i
n_amigos = n_amigos.to_i

puts "NOMBRE= #{nombre}"
puts "NAMIGOS= #{n_amigos}"

if (n_amigos < 1)
    n_amigos = n_amigos * (-1)
elsif
    (n_amigos > 10)
    n_amigos = MAX
end

#Peticion y datos
client = my_twitter_client()
if client.user? nombre 
  ultimos_t = client.friends(nombre,{})
  lista = ultimos_t.map{|i| [i.name, i.followers_count]}
  lista.sort_by!{|a,b| -b}
  lista = lista.take(n_amigos)
end

#Control
if aux > MAX
  puts "Sólo se puede mostrar hasta #{MAX} amigos"
elsif lista.length < 1
  puts "El usuario no existe o no tiene amigos"
elsif lista.length < n_amigos
  puts "El usuario tiene menos de #{n_amigos} amigos"
end

#Mostramos
for i in (0..n_amigos-1)
    c = i+1
    puts "#{c} #{lista[i]}"
end

# lista.each{|i,j| puts "#{i} #{j}"}
# end
