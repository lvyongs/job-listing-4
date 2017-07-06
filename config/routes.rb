Rails.application.routes.draw do
  devise_for :users

   resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace :admin do
     resources :jobs
   end
   root 'welcome#index'

end
