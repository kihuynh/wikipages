Rails.application.routes.draw do
  resources :stores do
    resources :details
  end
end
