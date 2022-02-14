Rails.application.routes.draw do

  
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
root to: 'homes#top'
  get 'homes/about'
resources :addresses
resources :orders
resources :customers
resources :products

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
