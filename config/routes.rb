Rails.application.routes.draw do
  get 'home', to: 'home#index'
  get 'about_us', to: 'about_us#about_dc'
  get 'contact', to: 'contact#contact_us'
  get 'faq', to: 'frecuent_asked_questions#faq'
  get 'support_us', to: 'support_us#support_us'
  get 'donate_money', to: 'donate_money#donate'
  get 'donate', to: 'donate_blood#donate'

  post 'donate_blood', to: 'donate_blood#donate_blood'

  root 'home#index'
end
