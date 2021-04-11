Rails.application.routes.draw do
  resources :syllabuses
  get 'home/index'
  get 'home/about'
  get 'home/support'
  get 'home/manuals'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
