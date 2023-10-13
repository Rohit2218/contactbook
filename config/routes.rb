Rails.application.routes.draw do
  resources :contacts,except: [:get]
  # delete '/contacts/:id' ,to: 'contacts#destroy'
  get '/contacts/:id/delete', to: 'contacts#destroy', as: 'delete_page'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
