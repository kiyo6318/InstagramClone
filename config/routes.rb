Rails.application.routes.draw do
  get '/pictures',to:'pictures#index'
  get '/pictures/new',to:'pictures#new'
  post '/pictures/create',to:'pictures#create'
  get '/pictures/:id/edit',to:'pictures#edit'
  post 'pictures/:id/update',to:'pictures#update'
  post 'pictures/:id/destroy',to:'pictures#destroy'
  get '/pictures/confirm/:id',to:'pictures#confirm',as:'confirm_picture'
end
