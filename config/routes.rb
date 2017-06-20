Rails.application.routes.draw do
  resources :receivers

  get 'home', to: 'home#index'
  get 'about_us', to: 'about_us#about_dc'
  get 'contact', to: 'contact#contact_us'
  get 'faq', to: 'frecuent_asked_questions#faq'
  get 'sponsors', to: 'sponsors#sponsors'
  get 'sponsor_us', to: 'sponsor_us#sponsor_form'
  get 'support_us', to: 'support_us#support_us'
  get 'donate_money', to: 'donate_money#donate'
  get 'donate', to: 'donate_blood#donate'
  get 'results', to: 'donate_results#donate_results'
  get 'find_donors', to: 'find_donors#find_donors'

  post 'contact_mail', to: 'contact#contact'
  post 'donate_blood', to: 'donate_blood#donate_blood'
  post 'find_form', to: 'find_donors#find_form'

  root 'home#index'
end
