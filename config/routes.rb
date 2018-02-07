Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'

  get 'layouts/application'
  root "welcome#index"

end
