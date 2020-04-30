Rails.application.routes.draw do

	# introducing the routing hierarchy

	get 'products', to: "products#index", as: :products

	# post 'products', to: "products#create"

	get 'products/:id', to: "products#show", as: :show_product
	
	get 'products/newp', to: "products#newp", as: :new_product
	
	get 'products/:id/edit', to: "products#edit", as: :edit_product
	
	patch 'products/:id', to: "products#update" 

	# put 'products/:id', to: "products#update"

	delete 'products/:id/delete', to: "products#destroy", as: :delete_product


end
