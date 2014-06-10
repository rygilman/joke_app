YouGotJokes::Application.routes.draw do
  
  root :to => 'jokes#index'


  get '/jokes/new' => 'jokes#new'
  post '/jokes' => 'jokes#create'


  post 'jokes/:id/like' => 'jokes#like', as: 'like_joke'

  post 'jokes/:id/flag' => 'jokes#flag', as: 'flag_joke'

end
