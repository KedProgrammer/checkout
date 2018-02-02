Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'checkout#make_order'
  post '/', to: 'checkout#make_order'
  get '/total', to: 'checkout#total_order'
end
