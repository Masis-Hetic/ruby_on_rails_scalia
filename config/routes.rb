Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :companies

	# get '/companies', to: 'companies#index'
	# post '/companies', to: 'companies#create'
	# get '/companies/new', to: 'companies#new'
	# get '/companies/:id', to: 'companies#edit'
	# get '/companies/:id', to: 'companies#show'
	# patch '/companies/:id', to: 'companies#update'
	# put '/companies/:id', to: 'companies#update'

	# companies GET /companies(.:format)companies#index
	# POST   / companies(. : format) companies #create
	# new_company GET /companies/new(. : format) companies #new
	# edit_company GET /companies/ : id / edit(. : format) companies #edit
	# company GET /companies/ : id(. : format) companies #show
	# PATCH /companies/ : id(. : format) companies #update
	# PUT /companies/ : id(. : format) companies #update
	# DELETE /companies/ : id(. : format) companies #destroy
end