Rails.application.routes.draw do
  devise_for :users
  resources :student_subjects
  resources :subjects
  resources :students
  get 'students/:id/destroy', to: 'students#destroy_student', as: :deletestudent

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
