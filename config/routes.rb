Rails.application.routes.draw do
  get 'lights/index'

  get 'lights/new'

  get 'lights/create'

  get 'lights/edit'

  get 'lights/update'

  get 'lights/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lights#index'

end
