Rails.application.routes.draw do

  get '/', to: 'bands#index'
  post '/', to: 'bands#index'

end
