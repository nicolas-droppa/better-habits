Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  
  get 'habits', to: 'habits#index'
  
  root 'pages#home'
end
