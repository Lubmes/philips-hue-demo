Rails.application.routes.draw do
  resources 'lights' do
    member do
      patch 'adjust'
      get 'turn_off'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lights#index'

end
