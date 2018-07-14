Rails.application.routes.draw do
  root to: 'pages#home'
  resources :skills
  resources :users do
    resources :skills
    resources :skills_users
  end

end
