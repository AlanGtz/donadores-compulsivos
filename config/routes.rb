Rails.application.routes.draw do
  resources :donors
  resources :receivers
  resources :contacts
  resources :sponsors

  get 'home', to: 'home#index'
  get 'about_us', to: 'about_us#about_dc'
  get 'contact', to: 'contacts#new'
  get 'faq', to: 'frecuent_asked_questions#faq'
  get 'sponsors', to: 'sponsors#new'
  get 'sponsor_us', to: 'sponsor_us#sponsors'
  get 'support_us', to: 'support_us#support_us'
  get 'donate_money', to: 'donate_money#donate'
  get 'donate', to: 'donors#new'
  get 'results', to: 'donate_results#donate_results'
  get 'find_donors', to: 'receivers#new'

  root 'home#index'
end
