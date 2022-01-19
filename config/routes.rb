Rails.application.routes.draw do
  devise_for :users
  get 'objects/index'
 root to: "objects#index"
end
