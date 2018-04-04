Rails.application.routes.draw do

  resources :advertisements

  resources :posts

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root to: 'welcome#index'

end
