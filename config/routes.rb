Rails.application.routes.draw do
  resources :pages
  root "pages#home"

  resources :experiences
  get "experiences/new"
  get "experiences/edit"

  resources :skills
  get "skills/new"
  get "skills/edit"

  get "download_pdf", to: "pages#download_pdf"
end
