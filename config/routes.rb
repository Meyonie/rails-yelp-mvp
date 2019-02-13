Rails.application.routes.draw do
  get 'restaurants/name:string'
  get 'restaurants/address:string'
  get 'restaurants/description:text'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
