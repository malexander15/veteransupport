Rails.application.routes.draw do
  get 'welcome/index'

  get 'layouts/application'
  root "welcome#index"

end
