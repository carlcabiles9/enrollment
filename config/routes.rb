Rails.application.routes.draw do
  devise_for :users
  resources :student_subjects
  resources :subjects
  resources :students
  get 'students/:id/destroy', to: 'students#destroy_student', as: :deletestudent
  
  devise_scope :user do
    authenticated :user do
      root 'students#index', as: :authenticated_root
    end
      unauthenticated do
        root 'devise/sessions#new' , as: :unauthenticated_root
    end
  end
  
end
