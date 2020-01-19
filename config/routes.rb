Rails.application.routes.draw do
  get 'student/index'

  get 'student/new'

  get 'student/show'

  get 'student/:id/edit', :to => "student#edit", :as =>"edit"
  get 'student/delete', :to => "student#delete", :as =>"delete"

  post "create", :to => "student#create"

  patch "student/:id", :to =>"student#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
