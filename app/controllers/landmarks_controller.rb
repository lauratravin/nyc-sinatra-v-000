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
    @landmarks = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmarks = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

end
