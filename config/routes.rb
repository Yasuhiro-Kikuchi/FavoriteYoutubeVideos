Rails.application.routes.draw do
  

  
  get 'videos/index'
  get "videos", to: "videos#index"
  get "videos/:page", to: "videos#index"

  get 'videos/genre/:id', to: "videos#genre"
  get 'videos/genre/:id/:page', to: "videos#genre"

  get 'videos/show/:id', to: "videos#show"

  get 'videoposts/index'
  get 'videoposts', to: "videoposts#index"
  
  get "videoposts/delete/:id", to: "videoposts#delete"
  post "videoposts/delete", to: "videoposts#delete"
  post "videoposts/delete/:id", to: "videoposts#delete"

  get 'videoposts/add'
  post 'videoposts/add'

  get 'videoposts/:id', to: "videoposts#edit"
  patch 'videoposts/:id', to: "videoposts#edit"

  get 'videoposts/delete'

  get 'videogenres/index'
  get 'videogenres', to: "videogenres#index"

  get 'videogenres/add'
  post 'videogenres/add'

  get 'videogenres/:id', to: "videogenres#edit"
  patch 'videogenres/:id', to: "videogenres#edit"

  get 'videoconfigs/index'
  get "videoconfigs", to: "videoconfigs#index"

  get 'videoconfigs/edit'
  patch 'videoconfigs/edit'
  
  resources :videoconfigs

  resources :items
  resources :questionary_results
  resources :questionary_choices
  resources :questionary_items
  resources :questionaries
  resources :answers
  resources :questions
  resources :mycontacts
  
  resources :orders
  resources :order_systems
  get "questionary_results/calc/:id", to: "questionary_results#calc"
  get "questionary_choices/new/:id", to: "questionary_choices#new"
  get "questionary_items/new/:id", to: "questionary_items#new"
  post "questionaries/:id", to: "questionaries#sendform"
  
  
  get 'blogs/index'
  get "blogs", to: "blogs#index"
  get "blogs/:page", to: "blogs#index"

  get 'blogs/genre/:id', to: "blogs#genre"
  get 'blogs/genre/:id/:page', to: "blogs#genre"

  get 'blogs/show/:id', to: "blogs#show"
  
  get 'blogposts/index'
  get "blogposts", to: "blogposts#index"
  
  get 'blogposts/delete/:id', to: "blogposts#delete"
  post 'blogposts/delete', to: "blogposts#delete"
  post 'blogposts/delete/:id', to: "blogposts#delete"
  
  get 'blogposts/add'
  post 'blogposts/add'
  
  get 'blogposts/:id', to: "blogposts#edit"  
  patch 'blogposts/:id', to: "blogposts#edit"
  
  get "blogposts/delete"
  
  get "bloggenres/index"
  get "bloggenres", to: "bloggenres#index"
  
  get "bloggenres/add"
  post "bloggenres/add"
  
  get 'bloggenres/:id', to: "bloggenres#edit"
  patch 'bloggenres/:id', to: "bloggenres#edit"
  
  get "blogconfigs/index"
  get "blogconfigs", to: "blogconfigs#index"
  
  get "blogconfigs/edit"
  patch "blogconfigs/edit"

  get 'bloggenres/index'

  get 'bloggenres/add'

  get 'bloggenres/edit'

  get 'blogposts/edit'
  
  

  get 'messages/index'

  get 'messages/show'

  get 'messages/add'

  get 'messages/edit'

  get 'cards/index'
  get "cards", to: "cards#index"
  get 'cards/show'

  get 'cards/add'
  post "cards/add"
  get 'cards/edit'
  
  get "cards/:id", to: "cards#show"

  get "cards/edit/:id", to: "cards#edit"
  patch "cards/edit/:id", to: "cards#edit"
  
  get "cards/delete/:id", to: "cards#delete"

  get "people/add"
  post "people/add", to: "people#create"
  get "people", to: "people#index"
  
  get "people/find"
  post "people/find"
  
  get "people/:id", to: "people#show"
  get "people/edit/:id", to: "people#edit"
  post "people/edit/:id", to: "people#update"
  patch "people/edit/:id", to: "people#update"
  get "people/delete/:id", to: "people#delete"
  
  get "dengonban", to: "dengonban#index"
  post "dengonban", to: "dengonban#index"
  get "dengonban/index"
  post "dengonban/index"
  
  get "messages/index"
  get "messages", to: "messages#index"
  
  get "messages/add"
  post "messages/add", to: "messages#create"
  
  get "messages/edit/:id", to: "messages#edit"
  patch "messages/edit/:id", to: "messages#update"
  
  get "messages/delete/:id", to: "messages#delete"  
  get "messages/:id", to: "messages#show"  
  
  
end
