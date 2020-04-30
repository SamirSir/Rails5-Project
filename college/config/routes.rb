Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # method 'path' to: 'actionform controller'
  get 'student', to: "student#index"

  post 'student/sample', to: "student#create"

  get 'student/sample', to: "student#sample"

  get 'student/:id/edit', to: "student#edit", as: :edit_student

  get 'student/:id', to: "student#show", as: :std

  patch 'student/:id', to: "student#update", as: :update

  get 'student/:id/delete', to: "student#destroy", as: :delete_student

 
end   