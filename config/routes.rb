Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace :admin do
     resources :jobs do
       member do
         post :pulish
         post :hide
       end
     end
   end
   root 'welcome#index'

end
