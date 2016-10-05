Rails.application.routes.draw do
<<<<<<< HEAD
  resources :categories do
    resources :dishes
  end
=======
  devise_for :users
>>>>>>> 0fe2d096e035a012c3350392611497a6ec9c3c43
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
end
