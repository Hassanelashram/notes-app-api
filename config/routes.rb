# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  namespace :api do
    namespace :v1 do
      resources :notes, defaults: { format: :json }
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
