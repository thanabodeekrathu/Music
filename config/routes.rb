Rails.application.routes.draw do
  resources :beta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get '/user/get_demo' , to: 'users#get_demo', as: :demo_user
  get '/user/get_params/:v1', to: 'users#get_demo2', as: :demo_user2
  
  #Homework rails - controller, view, 
  get '/song/html' , to: 'songs#song_html', as: :demo_html
  get '/song/json' , to: 'songs#song_json', as: :demo_json
  resources :songs

end
