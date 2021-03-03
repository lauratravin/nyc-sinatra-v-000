class FiguresController < ApplicationController
  # add controller methods
 get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
 end


  get '/figures/new'  do
    erb :'figures/new'
  end

  post '/figures'  do
     binding.pry
    #  params with existing data
    #  {"figure"=>{"name"=>"Juan", "title_ids"=>["2"], "landmark_ids"=>["6"]},
    #   "title"=>{"name"=>""},
    #    "Landmark"=>{"name"=>"", "year_completed"=>""}}
      # if params[:title][:name].empty? && params[:landmark][:name].empty?
      #      @figure = Figure.create(params[:figure])
      else
      end

  end


end
