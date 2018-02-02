Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



    namespace :api, defaults: { format: :json } do
  		namespace :v1 do
    		 post '/add', to: 'checkout#make_order'
  			get '/total', to: 'checkout#total_order'
  			get '/remove', to: 'checkout#remove'
  		end
	end
end
