Rails.application.routes.draw do
  get 'static_pages/vekalet'
  get    '/karar1',    to: 'static_pages#karar1'
  get    '/karar2',    to: 'static_pages#karar2'
  get    '/karar3',    to: 'static_pages#karar3'
  get    '/vekalet',    to: 'static_pages#vekalet'
  resources :contacts, only: [:new,	:create]
  get 'welcome/homepage'
  root 'welcome#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
