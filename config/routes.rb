Rails.application.routes.draw do
  get '/pictures',to:'pictures#index'
  get '/pictures/new',to:'pictures#new'
  post '/pictures',to:'pictures#create'
  get '/pictures/:id/edit',to:'pictures#edit',as:'edit_picture'
  patch '/pictures/:id/edit',to:'pictures#update'
  delete '/pictures/:id',to:'pictures#destroy',as:'destroy_picture'
  get '/pictures/confirm/:id',to:'pictures#confirm',as:'confirm_picture'
end
