class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
     @landmarks = Landmark.all
     erb :'landmarks/index'
  end

  get '/landmarks/new'  do
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do
    # binding.pry
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmarks = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  post '/landmark' do
    @landmark = Landmark.create[params[:landmark]
    redirect "landmark/#{@landmark.id}"
  end

end
