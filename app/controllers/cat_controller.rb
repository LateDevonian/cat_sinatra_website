require 'sinatra/base'
require 'json'
require 'byebug'

class CatController < ApplicationController

  get '/cats' do
    @cats = Cat.all
    erb :'/cats/index'
  end

  get '/playjs' do
    erb :'/cats/playjs'
  end

  get '/new' do
    erb :new
  end

  # get '/cats/:id' do
  #   #to be written
  #   @cat(params["id"])
  #   erb :'show.erb'
  # end

  post '/cats' do
    @cat = Cat.new
    @cat.name = params[:name]
    @cat.colour = params[:colour]
    @cat.weight_kgs = params[:weight_kgs]
    @cat.temperament = params[:temperament]
    @cat.save

    redirect "/cats/#{@cat.id}"
  end

end
