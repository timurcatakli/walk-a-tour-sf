
#index  display a list of all tours
get '/tours' do
  @tours = Tours.all
  erb :index
end

#new  return an HTML form for creating a new photo
get '/tours/new' do
  erb :new
end

#create create a new photo
post '/tours' do
  Tour.create(params)
  redirect
end


#show display a specific photo
get '/tours/:id' do
  @tour = Tour.find(params)
end

#edit return an HTML form for editing a photo
get '/tours/:id/edit'
  erb '/edit'
end

#update update a specific photo
put '/tours/:id' do
  Tour.update(params)
  redirect
end

#destroy  delete a specific photo
destroy '/tours/:id' do
  tour = Tour.find(params[:id])
  tour.destroy
  redirect
end