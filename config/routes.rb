Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :t_unidades
  get '/organigrama/:id', to: 't_unidades#organigrama', as: 'organigrama'
  get '/organigrama', to: 't_unidades#organigrama'
end
