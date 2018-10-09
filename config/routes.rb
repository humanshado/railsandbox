Rails.application.routes.draw do
  root to: 'populations#index'

  resources :populations do
    collection { post :upload}
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
