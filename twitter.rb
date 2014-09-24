# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'

require './configure'

get '/' do
  @todo_tweet = []
  @name = ''
  @number = 0		
  erb :twitter
end

post '/' do
  @todo_tweet = []
  client = my_twitter_client() 
  @name = params[:firstname] || ''
  @number = params[:n].to_i
  @number_aux = @number
  #controlamos que los amigos esten entre 1 y 10
  @number = 1 if @number < 1
  @number = 10 if @number > 10
  
  if client.user? @name 
#     ultimos_t = client.user_timeline(@name,{:count=>@number.to_i})
    ultimos_t = client.friends(@name,{})
#     seguidores = client.friend_ids(@name).attrs[:ids].take(@number)
    @amigos = ultimos_t.map{|i| [i.name, i.followers_count]}
#     puts "max = #{@amigos.length}"
    @amigos.sort_by!{|a,b| b}.reverse!
    @amigos = @amigos.take(@number)
#      @amigos = ultimos_t.map{|i| i.name, i,followers_count}
     
#     @todo_tweet =(@todo_tweet != '') ? ultimos_t.map{ |i| i.text} : ''
#      @todo_tweet =(@todo_tweet != '') ? @amigos : ''
  end
  erb :twitter
end

