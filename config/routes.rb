Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get 'about' => 'pages#about'
  get 'thanks' => 'pages#thanks'
  get 'home' => 'pages#home'
  get 'contact' => 'pages#contact'

  get '/signups' => 'signups#index'
  post '/signups' => 'signups#create'
  get '/signups/new' => 'signups#new'
  post '/contact' => 'pages#thanks'

  resources :signups

end