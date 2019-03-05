Rails.application.routes.draw do
  root 'theatres#index'
  resources :theatres, :films,:sessions

end
